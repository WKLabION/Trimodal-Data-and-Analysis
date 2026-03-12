clear; close all;

load('trimodal_data\220_26.mat');

stimDuration = 2; % sec
fps = 15;
binSizeRange = [15,90];
nShuffles = 6000;
respKernelMaxThd = 0.2;

F0 = Function.F0;
RawTrace = Function.RawTrace;
FaceMotionPC1 = Function.FaceMotionPC1;
StimStart = Function.StimStart;

stimType = size(StimStart,1);
stimMat = zeros(size(RawTrace,2),stimType);
for mm = 1:stimType
    stimMat(StimStart(mm,:),mm) = 1;
end

spline_basis = generate_spline_basis();
stimMatSpline = Conv_BasisFunc(stimMat,spline_basis);
stimMatSpline = normalize(stimMatSpline,'range');

varGroup = cell(1,stimType);
tmpGroupSize = size(stimMatSpline,2)/size(stimMat,2);
for ii = 1:size(stimMat,2)
    varGroup{ii} = (ii-1)*tmpGroupSize + 1 : ii*tmpGroupSize;
end

motionPCNum = 2;
varGroup{end+1} =  max(varGroup{end})+1: max(varGroup{end})+motionPCNum;

% raise faceMotion PC to 1,2 power
tmpFaceMotionPC = movmean(FaceMotionPC1,5);
tmpFaceMotionPCPower = zeros(motionPCNum,size(tmpFaceMotionPC,2));

tmpFaceMotionPCPower(1,:) = zscore(tmpFaceMotionPC(1,:));
tmpFaceMotionPCPower(2,:) = zscore(tmpFaceMotionPC(1,:).^2);

stimMatSpline = normalize(stimMatSpline,'range');
X = cat(2,stimMatSpline, tmpFaceMotionPCPower');

y = RawTrace / F0;
y = y(:);
[F_stat_real, GLMcoeff] = GLM_Normal(X,y,varGroup);
respKernelMax = respKernel(X,GLMcoeff,spline_basis,stimType);

[shuffle_order,binSize_order] = generateShuffleOrder(RawTrace,nShuffles,binSizeRange);
F_stat_Shuffle = GLMShuffle(X,y,varGroup,nShuffles,binSize_order,shuffle_order);

% caluclate p value each stimulus, permutation test
p_value = zeros(length(varGroup),1);
for ii = 1:length(varGroup)
    p_value(ii) = mean(F_stat_Shuffle(:,ii) >= F_stat_real(ii));
end

p_value(p_value==0) = 1/nShuffles;
p_adj = p_value * (stimType + 1);
p_adj(p_adj>1) = 1;

function respKernelMax = respKernel(X,GLMcoeff,spline_basis,stimType)
tmpGLMcoeff = GLMcoeff(2:end);
tmpX = X;

tmpKernel = zeros(size(tmpX,1),5);
splineNum = size(spline_basis,2);

for ii = 1:stimType
    tmpKernel(:,ii) = tmpX(:,1+(ii-1)*splineNum:ii*splineNum) *...
        tmpGLMcoeff(1+(ii-1)*splineNum:ii*splineNum);
end

respKernelMax = max(abs(tmpKernel),[],1);

end

function spline_basis = generate_spline_basis()
x_min = 0;
x_max = 45;
x_res = 1;
degree = 6;
n_knots = 1;

x = (x_min:x_res:x_max)';
augmented_knots = linspace(x_min, x_max, n_knots);
knots = [repmat(x_min, 1, degree+1) augmented_knots(2:end-1) repmat(x_max, 1, degree+1)];

spline_basis = spcol(knots, degree+1, x);
end

function  [F_stat,GLMcoeffs] = GLM_Normal(X,y,varGroup)

glm_mdl = fitglm(X, y);

% Get predictions from full model
y_pred = predict(glm_mdl, X);

full_rss = sum((y - y_pred).^2);

% Calculate contribution of individual variables
F_stat = zeros(1,length(varGroup));

% Get the coefficients for each variable
coeffs = glm_mdl.Coefficients.Estimate;
GLMcoeffs = glm_mdl.Coefficients.Estimate;
coeffs_intercept = coeffs(1);
coeffs(1) = [];

for i = 1:length(varGroup)
    % Create X matrix without current variable
    X_reduced = X;
    X_reduced(:,varGroup{i}) = [];

    % Compute the linear predictor (X * coeffs) for the reduced model
    % Exclude the corresponding variable's contribution
    coeffs_reduced = coeffs;
    coeffs_reduced(varGroup{i}) = [];  % Remove the i-th coefficient
    y_pred_reduced = X_reduced * coeffs_reduced + coeffs_intercept;

    % residual sum of squares (RSS)
    reduced_rss = sum((y - y_pred_reduced).^2);

    p_full = size(X,2);
    p_diff = length(varGroup{i});  % Difference in parameters

    n = size(X, 1);  % Number of observations

    % Calculate the F-statistic
    F_stat(i) = ((reduced_rss - full_rss) / p_diff) / (full_rss / (n - p_full));
end

end

function stimMatSpline = Conv_BasisFunc(stimMat,spline_basis)
stimMatSpline = zeros(size(stimMat,1),size(stimMat,2) * size(spline_basis,2));
for ii = 1:size(stimMat,2)
    for jj = 1:size(spline_basis,2)
        w = conv(stimMat(:,ii),spline_basis(:,jj));
        stimMatSpline(:,jj + (ii-1)*size(spline_basis,2)) = w(1:size(stimMat,1));
    end

end
end

function F_stat_Shuffle = GLMShuffle(X,y,varGroup,...
    nShuffles,binSize_order,shuffle_order)

% Preallocate for shuffled results
F_stat_Shuffle = zeros(nShuffles, length(varGroup));

% Use the precomputed shuffle orders
for kk = 1:nShuffles
    deconTrace = y;
    deconTrace = arrayShuffle(deconTrace, binSize_order(kk), shuffle_order{kk});
    F_stat_Shuffle(kk,:) = GLM_Normal(X,deconTrace,varGroup);
end

end

function [shuffle_order,binSize_order] = generateShuffleOrder(RawTrace,nShuffles,binSizeRange)
% Precompute the shuffle order
shuffle_order = cell(nShuffles, 1);
binSize_order = zeros(nShuffles, 1);

% Generate shuffle orders for all iterations
for ii = 1:nShuffles
    binSize_order(ii) = randi([binSizeRange(1), binSizeRange(2)]);  % Shuffling bin size
end

for ii = 1:nShuffles
    shuffle_order{ii} = randperm(floor(length(RawTrace) / binSize_order(ii)));  % Shuffling indices
end

end

function shuffled_data = arrayShuffle(data, bin, shuffle_order)

num_complete_bins = floor(length(data) / bin);
frames_to_use = num_complete_bins * bin;

tmpData = data;

binned_data = reshape(tmpData(1:frames_to_use), bin, num_complete_bins);

shuffled_bins = binned_data(:, shuffle_order);

tmp_shuffled_data = reshape(shuffled_bins, 1, frames_to_use);

if frames_to_use < length(tmpData)
    tmp_shuffled_data = [tmp_shuffled_data tmpData(frames_to_use + 1:end)'];
end
shuffled_data = tmp_shuffled_data';

end


