%% load data
clear; close all;

path = 'trimodal_data\';

fileList = dir(fullfile(path,'*.mat'));
[~,ind] = natsort({fileList.name});
fileList = fileList(ind);

allCellType = zeros(length(fileList),1);
allSomaInfo = zeros(length(fileList),4);
allAxonLength = zeros(length(fileList),1);
allProj = [];
allFISHNorm = zeros(length(fileList),30);
paramStructArray = [];
allFuncLabel = zeros(length(fileList),1);

for jj = 1:length(fileList)

    load([path,fileList(jj).name]);
    disp(fileList(jj).name);

    allFuncLabel(jj) = Function.FuncLabel;

    allAxonLength(jj) = Structure.AxonParam.axonTotalLength;

    allSomaInfo(jj,:) = ...
        [Structure.SomaInfo.x,Structure.SomaInfo.y,Structure.SomaInfo.z,Structure.SomaInfo.depth] / 1000;

    allProj(jj,:) = Structure.Proj.projLength;
    if strcmp(Structure.CellType,'PT')
        allCellType(jj) = 2; 
    else
        allCellType(jj) = 1;
    end

    axon = Structure.AxonParam;
    dend = Structure.DendriteParam;
    paramStruct = struct();

    % Axon parameters
    paramStruct.axonTotalLength       = axon.axonTotalLength;
    paramStruct.axonBranchNum         = axon.axonBranchNum;
    paramStruct.maxBranchOrder        = axon.maxBranchOrder;
    paramStruct.meanBranchLength      = axon.meanBranchLength;
    paramStruct.maxBranchLength       = axon.maxBranchLength;
    paramStruct.terminalNum           = axon.terminalNum;
    paramStruct.targetNum             = axon.targetNum;
    paramStruct.meanBranchTortuosity  = axon.meanBranchTortuosity;

    % Initialize all dendrite fields with NaN
    paramStruct.globalDendriteLength        = NaN;
    paramStruct.globalDendriteLengthMean    = NaN;
    paramStruct.globalDendriteBranchNum     = NaN;
    paramStruct.globalPathToSomaMean        = NaN;
    paramStruct.globalPathToSomaMax         = NaN;
    paramStruct.globalHeight                = NaN;
    paramStruct.globalWidth                 = NaN;
    paramStruct.globalVolume                = NaN;
    paramStruct.trunkLength                 = NaN;
    paramStruct.tuftLength                  = NaN;
    paramStruct.basalLength                 = NaN;
    paramStruct.basalBranchNum              = NaN;
    paramStruct.basalVolume                 = NaN;

    % Dendrite parameters
    if isfield(dend, 'globalDendriteLength'),        paramStruct.globalDendriteLength = dend.globalDendriteLength; end
    if isfield(dend, 'globalDendriteLengthMean'),    paramStruct.globalDendriteLengthMean = dend.globalDendriteLengthMean; end
    if isfield(dend, 'globalDendriteBranchNum'),     paramStruct.globalDendriteBranchNum = dend.globalDendriteBranchNum; end
    if isfield(dend, 'globalPathToSomaMean'),        paramStruct.globalPathToSomaMean = dend.globalPathToSomaMean; end
    if isfield(dend, 'globalPathToSomaMax'),         paramStruct.globalPathToSomaMax = dend.globalPathToSomaMax; end
    if isfield(dend, 'globalHeight'),                paramStruct.globalHeight = dend.globalHeight; end
    if isfield(dend, 'globalWidth'),                 paramStruct.globalWidth = dend.globalWidth; end
    if isfield(dend, 'globalVolume'),                paramStruct.globalVolume = dend.globalVolume; end
    if isfield(dend, 'trunkLength'),                 paramStruct.trunkLength = dend.trunkLength; end
    if isfield(dend, 'tuftLength'),                  paramStruct.tuftLength = dend.tuftLength; end
    if isfield(dend, 'basalLength'),                 paramStruct.basalLength = dend.basalLength; end
    if isfield(dend, 'basalBranchNum'),              paramStruct.basalBranchNum = dend.basalBranchNum; end
    if isfield(dend, 'basalVolume'),                 paramStruct.basalVolume = dend.basalVolume; end

    paramStructArray = [paramStructArray; paramStruct];

    if ~isempty(Molecular)
        allFISHNorm(jj,:) = Molecular.NormalizedExpression;
    end
end

neuronParamTable = struct2table(paramStructArray);


% brain region, marker name
somaInfoName = {'x','y','z','depth'};
brainRegion = Structure.Proj.regionName;
geneName = Molecular.Marker;


fileListFlt = fileList;
allFuncLabelFlt = allFuncLabel;
allCellTypeFlt = allCellType;
allProjFlt = allProj;
allAxonLengthFlt = allAxonLength;
allFISHNormFlt = allFISHNorm;
allSomaInfoFlt = allSomaInfo;

%% filter IT
IT_idx = find(allCellTypeFlt~=2);
fileListFlt(IT_idx) = [];
allFuncLabelFlt(IT_idx) = [];
allCellTypeFlt(IT_idx) = []; 
allProjFlt(IT_idx,:) = [];
allAxonLengthFlt(IT_idx) = [];
allFISHNormFlt(IT_idx,:) = [];
allSomaInfoFlt(IT_idx,:) = [];
%% filter short
tmpThd = 10; % IT
tmpShort = find(allAxonLengthFlt < tmpThd);

fileListFlt(tmpShort) = [];
allFuncLabelFlt(tmpShort) = [];
allCellTypeFlt(tmpShort,:) = [];
allProjFlt(tmpShort,:) = [];
allAxonLengthFlt(tmpShort) = [];
allFISHNormFlt(tmpShort,:) = [];
allSomaInfoFlt(tmpShort,:) = [];

tmpShort = [];
tmpThd = 20; % for PT neuron set threshold to 20
for ii = 1:length(allCellTypeFlt)
    if allCellTypeFlt(ii) == 2 && allAxonLengthFlt(ii) < tmpThd
        tmpShort = [tmpShort, ii];
    end

end

fileListFlt(tmpShort) = [];
allFuncLabelFlt(tmpShort) = [];
allCellTypeFlt(tmpShort,:) = [];
allProjFlt(tmpShort,:) = [];
allAxonLengthFlt(tmpShort) = [];
allFISHNormFlt(tmpShort,:) = [];
allSomaInfoFlt(tmpShort,:) = [];
%% functional axis (Checkerboard vs None)
funcLabel = allFuncLabelFlt;
validIdx = (funcLabel == 0 | funcLabel == 1);
XZ = allSomaInfoFlt(validIdx, [1, 3]);
XZ(:,1) = XZ(:,1) - 5.7;
labels = funcLabel(validIdx);
fileListXZ = fileListFlt(validIdx);

% Fit LDA
ldaModel = fitcdiscr(XZ, labels);
w = ldaModel.Coeffs(1,2).Linear;
w = w / norm(w);

% calculate distance to the functional axis
signed_dists = computeLDADistanceXZ(allSomaInfoFlt(validIdx,:), funcLabel(validIdx));

% Visualize
meanPoint = mean(XZ, 1);
pt1 = meanPoint - [-w(2), w(1)];
pt2 = meanPoint + [-w(2), w(1)];

grayColor = [0.5 0.5 0.5];
blueColor = [11, 97, 216]/255;

figure('Color', 'w'); clf;
hold on;

% ---- Draw confidence ellipses ----
draw_group_ellipse(XZ(labels==0, :), grayColor, 0.25);
draw_group_ellipse(XZ(labels==1, :), blueColor, 0.25);

% ---- Plot scatter points ----
scatter(XZ(labels==0,1), XZ(labels==0,2), 60, grayColor, 'filled', ...
    'MarkerEdgeColor', 'none');
scatter(XZ(labels==1,1), XZ(labels==1,2), 60, blueColor, 'filled', ...
    'MarkerEdgeColor', 'none');

% ---- LDA axis ----
plot([pt1(1), pt2(1)], [pt1(2), pt2(2)], 'k--', 'LineWidth', 3);

xlabel('Medial–Lateral (mm)', 'FontSize', 12);
ylabel('Anterior–Posterior (mm)', 'FontSize', 12);
set(gca, 'YDir', 'reverse', 'FontSize', 11);
box off;

xlim([1.2,3.2]);
xticks(1.2:0.4:3.2);
yticks(7:0.5:10);

ax = gca;
ax.LineWidth = 3;
ax.Box = 'off';
ax.TickDir = 'out';
ax.FontSize = 22;
ax.XColor = 'k';
ax.YColor = 'k';

set(gcf, 'Position', [680   426   605   579]);

%% filter neurons without FISH data
noFISH_idx =  find(all(allFISHNormFlt == 0,2));
fileListFlt(noFISH_idx) = [];
allCellTypeFlt(noFISH_idx) = []; 
allProjFlt(noFISH_idx,:) = [];
allAxonLengthFlt(noFISH_idx) = [];
allFISHNormFlt(noFISH_idx,:) = [];
allFuncLabelFlt(noFISH_idx,:) = [];
allSomaInfoFlt(noFISH_idx,:) = [];
%% filter less projecting brain region
tmpThd = 0.2;
tmpProjRatio = mean(allProjFlt>1,1);

tmpShort = find(tmpProjRatio < tmpThd);

allProjFlt(:,tmpShort) = [];

brainRegionFlt = brainRegion;
brainRegionFlt(tmpShort) = [];

% normalize by total axon length
for ii = 1:size(allProjFlt,1)
    allProjFlt(ii,:) = allProjFlt(ii,:) ./ allAxonLengthFlt(ii);
end

allProjFlt = allProjFlt / max(allProjFlt(:));
%% get morph parameters
namesFlt = {fileListFlt.name};
namesMorph = {fileList.name};

% Find indices in fileListMorph that match each file in fileListFlt
[~, idxInMorph] = ismember(namesFlt, namesMorph);

neuronParamTableFlt = neuronParamTable(idxInMorph,:);

allVars = neuronParamTableFlt.Properties.VariableNames;
excludeVars = ismember(allVars, {'fileName'});
paramNames = allVars(~excludeVars);

axonParams = paramNames(1:8);
dendriteParams = paramNames(9:end);

% Build axon data
axonData = [];
for i = 1:length(axonParams)
    col = neuronParamTableFlt.(axonParams{i});
    if iscell(col), col = cell2mat(col); end
    axonData = [axonData, col];
end


% Build dendrite data
dendriteData = [];
for i = 1:length(dendriteParams)
    col = neuronParamTableFlt.(dendriteParams{i});
    if iscell(col), col = cell2mat(col); end
    dendriteData = [dendriteData, col];
end

axonData = zscore_nan(axonData);
dendriteData = zscore_nan(dendriteData);
%% Build X (Checkerboard vs None)
validIdx = find(allFuncLabelFlt~=2); % checkerboard vs none
% validIdx = find(allFuncLabelFlt~=0); % checkerboard vs grating
% validIdx = find(allFuncLabelFlt~=1); % grating vs none

X1 = allProjFlt;

X2 = [axonData, dendriteData];
for i = 1:size(X2,2)
    col = X2(:,i);
    col(isnan(col)) = mean(col(~isnan(col)));
    X2(:,i) = col;
end

X3 = allSomaInfoFlt;
X3 = X3 - mean(X3,1);
X3 = X3 / max(X3(:));
X3(:,[1,3]) = [];
X3 = X3(validIdx,:);
somaInfoNameFlt = somaInfoName([2,4]);
tmpName = {fileListFlt.name};
tmpName = tmpName(allFuncLabelFlt~=2);
[~, idx] = ismember({fileListXZ.name}, tmpName);
X3(:,3) = double(signed_dists(find(idx)));
somaInfoNameFlt(3) = {'FuncAxis'};

X4 = allFISHNormFlt;
X4(:,3) = []; % remove Eef2
geneNameFlt = geneName;
geneNameFlt(3) = [];

X = [X1(validIdx,:), X2(validIdx,:), X3, X4(validIdx,:)];
allName = [brainRegionFlt',paramNames,somaInfoNameFlt,geneNameFlt];

Y = allFuncLabelFlt;
Y = Y(validIdx);

save('multimodal_data.mat','X','Y','allName');


function [selectedIdx, selectedNames, recordDeviance, recordPval, recordAUC] = ...
    stepwiseGLM_DevianceCV_noStop(X, Y, allName, distribution, maxIter)

    % Initialize parallel pool if not already started
    if isempty(gcp('nocreate'))
        parpool('local', 8);
    end

    % Initializations
    X_refit = X;
    predictorNames = allName;
    selectedIdx = [];
    selectedNames = {};
    recordDeviance = [];
    recordPval = [];
    recordAUC = [];

    for iter = 1:maxIter
        nFeatures = size(X_refit, 2);
        devDrop = inf(1, nFeatures);
        pvalVec = ones(1, nFeatures);

        % Reduced model
        if isempty(selectedIdx)
            mdl_reduced = fitglm(ones(size(X,1),1), Y, 'Distribution', distribution);
        else
            mdl_reduced = fitglm(X(:, selectedIdx), Y, 'Distribution', distribution);
        end
        dev0 = mdl_reduced.Deviance;

        % Search over all candidate predictors
        for i = 1:nFeatures
            realName = predictorNames{i};
            realIdx = find(strcmp(realName, allName));

            mdl_full = fitglm(X(:, [selectedIdx, realIdx]), Y, 'Distribution', distribution);
            dev1 = mdl_full.Deviance;
            d = mdl_reduced.DFE - mdl_full.DFE;
            pvalVec(i) = 1 - chi2cdf(dev0 - dev1, d);
            devDrop(i) = dev0 - dev1;
        end

        % Choose predictor with largest deviance drop
        [~, bestIdx] = max(devDrop);
        bestName = predictorNames{bestIdx};
        realIdx = find(strcmp(bestName, allName));
        bestPval = pvalVec(bestIdx);

        % Record info
        selectedIdx(end+1) = realIdx;
        selectedNames{end+1} = bestName;
        recordDeviance(end+1) = devDrop(bestIdx);
        recordPval(end+1) = bestPval;

        % Compute CV-AUC for current model
        auc = mean(cvAUC(X(:, selectedIdx), Y));
        recordAUC(end+1) = auc;

        disp(['Step ', num2str(iter), ': Added ', bestName, ...
              ', deviance drop = ', num2str(devDrop(bestIdx)), ...
              ', p = ', num2str(bestPval), ...
              ', AUC = ', num2str(auc)]);

        % Remove selected predictor from future candidates
        X_refit(:, bestIdx) = [];
        predictorNames(bestIdx) = [];
    end
end

function [selectedIdx, selectedNames, recordAUC, recordPval] = stepwiseGLM_AUC(X, Y, allName, distribution, maxIter)
%STEPWISEGLM_AUC Greedy stepwise GLM predictor selection using AUC and F-test p-value
% 
% Inputs:
%   - X           : Feature matrix (nSamples x nFeatures)
%   - Y           : Binary labels or regression targets
%   - allName     : Cell array of predictor names
%   - distribution: 'binomial' or 'normal'
%   - maxIter     : Maximum number of features to select
%
% Outputs:
%   - selectedIdx   : Indices of selected features in X
%   - selectedNames : Names of selected predictors
%   - recordAUC     : Mean AUC at each step
%   - recordPval    : p-value from F-test at each step

    % Initialize parallel pool if not already started
    if isempty(gcp('nocreate'))
        parpool('local', 8);
    end

    X_refit = X;
    predictorNames = allName;

    selectedIdx = [];
    selectedNames = {};
    recordAUC = [];
    recordPval = [];

    for iter = 1:maxIter
        nFeatures = size(X_refit, 2);
        aucMatrix = zeros(1000, nFeatures);

        parfor i = 1:nFeatures
            candidateX = [X_refit(:, i), X(:, selectedIdx)];
            aucMatrix(:, i) = cvAUC(candidateX, Y);
        end

        aucMeans = mean(aucMatrix, 1);
        [bestAUC, bestIdx] = max(aucMeans);
        bestName = predictorNames{bestIdx};
        realIdx = find(strcmp(bestName, allName)); % Real index in original X

        recordAUC(end+1) = bestAUC;
        disp(['Adding: ', bestName, ' | Mean AUC: ', num2str(bestAUC)]);

        % Reduced model
        if isempty(selectedIdx)
            mdl_reduced = fitglm(ones(size(X,1),1), Y, 'Distribution', distribution);
        else
            mdl_reduced = fitglm(X(:, selectedIdx), Y, 'Distribution', distribution);
        end

        % Full model (add new predictor)
        mdl_full = fitglm(X(:, [selectedIdx, realIdx]), Y, 'Distribution', distribution);

%         rss_reduced = sum(mdl_reduced.Residuals.Raw.^2);
%         rss_full = sum(mdl_full.Residuals.Raw.^2);
%         df_reduced = mdl_reduced.DFE;
%         df_full = mdl_full.DFE;
%         df_diff = df_reduced - df_full;
% 
%         F_stat = ((rss_reduced - rss_full) / df_diff) / (rss_full / df_full);
%         p_value = 1 - fcdf(F_stat, df_diff, df_full);

        dev_reduced = mdl_reduced.Deviance;
        dev_full = mdl_full.Deviance;
        d = mdl_reduced.DFE - mdl_full.DFE;
        p_value = 1 - chi2cdf(dev_reduced - dev_full, d);

        recordPval(end+1) = p_value;

        % Update selected list
        selectedIdx(end+1) = realIdx;
        selectedNames{end+1} = bestName;

        disp(['Full Model: ', strjoin(selectedNames, ' + ')]);

        % Remove from future candidates
        X_refit(:, bestIdx) = [];
        predictorNames(bestIdx) = [];
    end
end

function [auc_values, acc_values] = cvAUCandAccuracy(X, Y)
    nRepeats = 200;
    nFolds = 5;
    totalRuns = nRepeats * nFolds;

    auc_values = zeros(totalRuns, 1);
    acc_values = zeros(totalRuns, 1);

    idx = 1;
    for r = 1:nRepeats
        cv = cvpartition(Y, 'KFold', nFolds);
        for fold = 1:nFolds
            trainIdx = cv.training(fold);
            testIdx = cv.test(fold);

            % Train model on training data
            mdl = fitglm(X(trainIdx, :), Y(trainIdx), 'Distribution', 'binomial');

            % Predict probabilities on test data
            ypred = predict(mdl, X(testIdx, :));

            % Compute AUC
            [fpr, tpr, thresholds, auc] = perfcurve(Y(testIdx), ypred, 1);
            auc_values(idx) = auc;

            % Compute optimal threshold via Youden's J
            [~, bestIdx] = max(tpr - fpr);
            optThreshold = thresholds(bestIdx);

            % Convert probabilities to labels using optimal threshold
            ybin = ypred > optThreshold;

            % Accuracy = proportion correct predictions
            acc_values(idx) = mean(ybin == Y(testIdx));

            idx = idx + 1;
        end
    end
end

% Cross-Validation AUC Function
function auc_values = cvAUC(X, Y)
    nRepeats = 200;
    nFolds = 5;
    totalRuns = nRepeats * nFolds;
    auc_values = zeros(totalRuns, 1);

    idx = 1;
    for r = 1:nRepeats
        cv = cvpartition(Y, 'KFold', nFolds);
        for fold = 1:nFolds
            trainIdx = cv.training(fold);
            testIdx = cv.test(fold);

            mdl = fitglm(X(trainIdx, :), Y(trainIdx), 'Distribution', 'binomial');
            ypred = predict(mdl, X(testIdx, :));
            [~,~,~,auc] = perfcurve(Y(testIdx), ypred, 1);

            auc_values(idx) = auc;
            idx = idx + 1;
        end
    end
end

function Xz = zscore_nan(X)
% ZSCORE_NAN Standardizes each column of X to mean=0 and std=1, ignoring NaNs

    mu = nanmean(X, 1);         % mean ignoring NaNs
    sigma = nanstd(X, 0, 1);    % std ignoring NaNs
    Xz = (X - mu) ./ sigma;     % z-score each column

    % Keep NaNs in place
end


function [fracDev, variable_contributions] = GLM_Normal_FracDev(X, y, varGroup)
% GLM_NORMAL_FRACDEV
% Fits a normal GLM and calculates:
% - Fraction of deviance explained (FDE) for the full model
% - Contribution of each variable group (via F-stat refitting)
%
% Inputs:
%   X         - Predictor matrix (n_samples x n_features)
%   y         - Response vector (n_samples x 1)
%   varGroup  - Cell array where each cell contains indices for a variable group
%
% Outputs:
%   fracDev               - Overall fraction of deviance explained by the full model
%   variable_contributions - Array with FDE contribution from each variable group

% Ensure y is a column vector
y = y(:);

% Fit full model
glm_full = fitglm(X, y);
y_pred_full = predict(glm_full, X);

% Calculate overall deviance explained
rss_full = sum((y - y_pred_full).^2);
rss_null = sum((y - mean(y)).^2);
fracDev = 1 - rss_full / rss_null;

% Preallocate
variable_contributions = zeros(length(varGroup), 1);

% Loop over variable groups
for i = 1:length(varGroup)
    % Remove current variable group
    X_reduced = X;
    X_reduced(:, varGroup{i}) = [];

    % Fit reduced model
    glm_reduced = fitglm(X_reduced, y);
    y_pred_reduced = predict(glm_reduced, X_reduced);

    % Calculate reduced RSS and contribution
    rss_reduced = sum((y - y_pred_reduced).^2);
    variable_contributions(i) = (rss_reduced - rss_full) / rss_null;
end
end


function signed_dists = computeLDADistanceXZ(allSomaInfoFlt, funcLabel)
% computeLDADistanceXZ
% ----------------------
% Computes the signed perpendicular distance of each neuron (based on X and Z)
% to the LDA decision axis that separates funcLabel = 0 vs. 1.
%
% Inputs:
%   - allSomaInfoFlt: NxM matrix, columns 1 and 3 must be X and Z
%   - funcLabel: Nx1 vector of labels
%
% Output:
%   - signed_dists: Nx1 vector of signed distances to the LDA axis

% Extract X and Z
XZ = allSomaInfoFlt(:, [1, 3]);
labels = funcLabel(:);  % ensure column

% Fit LDA
ldaModel = fitcdiscr(XZ, labels);
w = ldaModel.Coeffs(1,2).Linear;
w = w / norm(w);  % normalize

% Center data and compute signed distances
meanPoint = mean(XZ, 1);
XZ_centered = XZ - meanPoint;

% Project onto normal vector (w)
signed_dists = XZ_centered * w;

end

function draw_group_ellipse(X, color, alpha)
mu = mean(X);
C = cov(X);
[V, D] = eig(C);

theta = linspace(0, 2*pi, 100);
unitCircle = [cos(theta); sin(theta)];

ellipse = (V * sqrt(D)) * unitCircle * 2;

x_ell = ellipse(1,:) + mu(1);
y_ell = ellipse(2,:) + mu(2);

fill(x_ell, y_ell, color, 'FaceAlpha', alpha, 'EdgeColor', 'none');
end
