clear; close all;

filePath = 'trimodal_data\220_26.mat';
load(filePath);

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

% trial-wise test
prctileThresh = 95; 
minSigTrials = 5;
isDisplay = 0;
Result = functionalCategorization_MultiWin(filePath, isDisplay, prctileThresh, minSigTrials);
allRspBinary = Result.responsive;


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

function Result = functionalCategorization_MultiWin(fullpath, isDisplay, prctileThresh, minSigTrials)
    if nargin < 2 || isempty(isDisplay), isDisplay = 0; end
    if nargin < 3 || isempty(prctileThresh), prctileThresh = 97.5; end
    if nargin < 4 || isempty(minSigTrials), minSigTrials = 6; end

    % --- 1. Load Data ---
    S = load(fullpath);
    if ~isfield(S, 'Function') || ~isfield(S.Function, 'RawTrace') || ~isfield(S.Function, 'StimStart')
        error('MAT file must contain Function.RawTrace and Function.StimStart.');
    end
    tmpRawTrace = S.Function.RawTrace(:);     
    tmpRspWin   = S.Function.StimStart;       

    % --- 2. Parameters ---
    fps_raw = 15;
    bin_factor = 3;             
    fps_new    = fps_raw / bin_factor; 

    movWinList = [3, 4, 5]; 

    preDur_s  = 2.0; 
    stimDur_s = 2.5; 
    postDur_s = 2.0;
    skipDur_s = 0.5; 

    pre_fr_raw  = round(preDur_s * fps_raw);
    stim_fr_raw = round(stimDur_s * fps_raw);
    post_fr_raw = round(postDur_s * fps_raw);
    
    pts_pre  = floor(pre_fr_raw / bin_factor);
    pts_stim = floor(stim_fr_raw / bin_factor);
    pts_skip = round(skipDur_s * fps_new); 

    nStim = size(tmpRspWin, 1);
    nRep  = size(tmpRspWin, 2);

    % --- 3. PRE-PROCESS ---
    AllDffTraces = cell(nStim, nRep); 
    for s = 1:nStim
        for k = 1:nRep
            st = tmpRspWin(s,k);
            if isnan(st) || st <= pre_fr_raw, continue; end
            idx_start = st - pre_fr_raw;
            idx_end   = st + stim_fr_raw + post_fr_raw - 1;
            if idx_end > numel(tmpRawTrace), continue; end
            raw_seg = tmpRawTrace(idx_start:idx_end);
            ds_seg  = downsample_mean(raw_seg, bin_factor);
            F0 = mean(ds_seg(1:pts_pre));
            if F0 == 0, F0 = 1e-6; end
            AllDffTraces{s,k} = (ds_seg - F0) / F0;
        end
    end

    % --- 4. EVALUATE WINDOWS ---
    WinResults = struct(); 
    
    for iW = 1:length(movWinList)
        currWin = movWinList(iW);
        PooledNull = [];
        TempTraces = cell(nStim, nRep);
        
        for s = 1:nStim
            for k = 1:nRep
                if isempty(AllDffTraces{s,k}), continue; end
                sm_trace = movmean(AllDffTraces{s,k}, currWin);
                TempTraces{s,k} = sm_trace;
                PooledNull = [PooledNull; sm_trace(1:pts_pre)']; 
            end
        end
        
        if isempty(PooledNull), cutoff = 0.2; else
            cutoff = prctile(PooledNull, prctileThresh);
        end
        
        HitsMat = zeros(nStim, 1);
        PeakMat = zeros(nStim, 1);
        SigMaskCell = cell(nStim, 1);
        
        for s = 1:nStim
            nHits = 0;
            sigMask = false(nRep, 1);
            avg_accum = [];
            for k = 1:nRep
                tr = TempTraces{s,k};
                if isempty(tr), continue; end
                if isempty(avg_accum), avg_accum = tr; else, avg_accum = avg_accum + tr; end
                
                idx_stim_start = pts_pre + 1 + pts_skip;
                idx_stim_end   = pts_pre + pts_stim;
                
                if idx_stim_start <= idx_stim_end
                    stim_vals = tr(idx_stim_start : idx_stim_end);
                    if max(stim_vals) > cutoff
                        nHits = nHits + 1;
                        sigMask(k) = true;
                    end
                end
            end
            HitsMat(s) = nHits;
            SigMaskCell{s} = sigMask;
            
            if ~isempty(avg_accum)
                mean_tr = avg_accum / nRep;
                idx_stim_start = pts_pre + 1; 
                idx_stim_end   = pts_pre + pts_stim;
                PeakMat(s) = max(mean_tr(idx_stim_start : idx_stim_end));
            end
        end
        
        WinResults(iW).win = currWin;
        WinResults(iW).cutoff = cutoff;
        WinResults(iW).Hits = HitsMat;
        WinResults(iW).Peak = PeakMat;
        WinResults(iW).Traces = TempTraces;
        WinResults(iW).SigMask = SigMaskCell;
        WinResults(iW).Passed = (HitsMat >= minSigTrials);
    end

    % --- 5. SELECT BEST WINDOW ---
    FinalPeak = zeros(nStim, 1);
    FinalHits = zeros(nStim, 1);
    FinalResp = false(nStim, 1);
    BestWinIdx = zeros(nStim, 1); 
    
    for s = 1:nStim
        candidates = [];
        for iW = 1:length(movWinList)
            entry.idx = iW;
            entry.passed = WinResults(iW).Passed(s);
            entry.hits   = WinResults(iW).Hits(s);
            entry.peak   = WinResults(iW).Peak(s);
            candidates = [candidates; entry]; %#ok<AGROW>
        end
        
        passed_cands = candidates([candidates.passed]);
        
        if isempty(passed_cands)
            [~, sortI] = sortrows(struct2table(candidates), {'hits','peak'}, {'descend','descend'});
            best = candidates(sortI(1));
            FinalResp(s) = false;
        else
            [~, sortI] = sortrows(struct2table(passed_cands), {'hits','peak'}, {'descend','descend'});
            best = passed_cands(sortI(1));
            FinalResp(s) = true;
        end
        
        FinalPeak(s) = best.peak;
        FinalHits(s) = best.hits;
        BestWinIdx(s) = best.idx;
    end
    FinalFrac = FinalHits / nRep;

    % --- 6. CATEGORIZATION ---
    stimLabel = strings(nStim, 1);
    for s=1:nStim, stimLabel(s) = "Stim" + s; end
    if any(FinalResp)
        masked_peak = FinalPeak;
        masked_peak(~FinalResp) = -inf;
        [~, bestS] = max(masked_peak);
        category = stimLabel(bestS);
    else
        category = "Non-responsive";
    end

    Result = struct();
    Result.PeakResp   = FinalPeak;
    Result.nSig       = FinalHits;
    Result.fracSig    = FinalFrac;
    Result.responsive = FinalResp;
    Result.category   = category;
    
    % --- 7. PLOTTING (3-Column Grid) ---
    if isDisplay
        figure(305); clf;
        figNameStr = "MultiWin Best: " + category;
        set(gcf, 'Name', char(figNameStr));
        
        t = tiledlayout(nStim, length(movWinList), 'TileSpacing', 'compact', 'Padding', 'compact');
        title(t, sprintf('File: ...%s | Cat: %s | Thresh: %d%% | MinTr: %d', ...
             fullpath(end-15:end), char(category), prctileThresh, minSigTrials), 'Interpreter', 'none');
         
        dummyTr = WinResults(1).Traces{1,1};
        if ~isempty(dummyTr)
            time_axis = linspace(-preDur_s, stimDur_s + postDur_s, length(dummyTr));
        else
            time_axis = 1:10; 
        end
        
        for s = 1:nStim
            for iW = 1:length(movWinList)
                nexttile; hold on;
                
                res    = WinResults(iW);
                traces = res.Traces(s,:);
                mask   = res.SigMask{s};
                cutoff = res.cutoff;
                winVal = res.win;
                hits   = res.Hits(s);
                passed = res.Passed(s);
                
                StimMat = [];
                for k=1:nRep, if ~isempty(traces{k}), StimMat(k,:) = traces{k}; end; end
                
                if isempty(StimMat), continue; end
                
                % Plotting
                if any(~mask), plot(time_axis, StimMat(~mask, :)', 'Color', [0.85 0.85 0.85], 'LineWidth', 0.5); end
                if any(mask),  plot(time_axis, StimMat(mask, :)', 'LineWidth', 1.0); end
                
                mean_tr = mean(StimMat, 1, 'omitnan');
                if passed, col=[0 0.6 0]; lw=2; else, col='b'; lw=1.5; end
                plot(time_axis, mean_tr, 'Color', col, 'LineWidth', lw);
                
                yline(cutoff, 'r--');
                xline(0, 'k-'); xline(stimDur_s, 'k:');
                
                yl=ylim; 
                patch([0 skipDur_s skipDur_s 0], [yl(1) yl(1) yl(2) yl(2)], ...
                    'k', 'FaceAlpha', 0.08, 'EdgeColor', 'none');
                
                xlim([-preDur_s, stimDur_s + postDur_s]);
                grid on;
                
                % --- Labels & Title Logic ---
                if iW == 1, ylabel(['Stim ' num2str(s)]); end
                if s == nStim, xlabel('Time (s)'); end
                
                % Label the "BEST" window specially
                isBest = (BestWinIdx(s) == iW);
                
                if isBest
                    titStr = sprintf('Win:%d [BEST] | Hits:%d', winVal, hits);
                    tColor = 'k'; tWeight = 'bold';
                    if passed, tColor = [0 0.5 0]; end % Green title if best & passed
                else
                    titStr = sprintf('Win:%d | Hits:%d', winVal, hits);
                    tColor = [0.4 0.4 0.4]; tWeight = 'normal'; % Gray title for non-best
                end
                
                title(titStr, 'Color', tColor, 'FontWeight', tWeight, 'FontSize', 9);
            end
        end
    end
end

function ds = downsample_mean(raw, N)
    len = length(raw);
    n_out = floor(len / N);
    raw_trunc = raw(1 : n_out*N);
    temp = reshape(raw_trunc, N, n_out);
    ds = mean(temp, 1); 
end

