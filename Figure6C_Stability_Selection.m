clear; close all;
load('multimodal_data.mat');

% Stability Selection Parameters
num_features = length(allName);
n_iterations = 500;       % Number of subsampling iterations
subsample_ratio = 0.8;    % Ratio of data to sample each time
alpha = 0.5;              % LASSO (1.0), Elastic Net (0 < alpha < 1)
feature_count = zeros(num_features, 1);
feature_matrix = zeros(n_iterations, num_features);

for iter = 1:n_iterations
    rng(iter);
    iter
    % Subsampling
    idx = randperm(length(Y), round(subsample_ratio * length(Y)));
    X_sub = X(idx, :);
    Y_sub = Y(idx);

    % Perform LASSO with CV to choose lambda
    [B, FitInfo] = lassoglm(X_sub, Y_sub, 'binomial', ...
        'Alpha', alpha,...
        'CV',5,...
        'MaxIter', 1000, ...
        'RelTol', 2e-3, ...
        'Standardize', true);

    if isfield(FitInfo,'IndexMinDeviance')
        idxMin = FitInfo.IndexMinDeviance;

        selected = B(:, idxMin) ~= 0;

        % Count selected features
        feature_count = feature_count + selected;
        feature_matrix(iter,:) = selected;
    end
end

% Normalize to get selection frequency (0 to 1)
feature_freq = feature_count / n_iterations;

%% fit GLM model
selectedCoeffs = find(feature_freq >=0.6);

X_refit = X(:,selectedCoeffs);

mdl = fitglm(X_refit, Y, 'Distribution', 'binomial');

coef = mdl.Coefficients.Estimate;
%% Visualization
selectNum = 10;
[sorted_freq, sort_idx] = sort(feature_freq, 'descend');
sorted_names = allName(sort_idx);

sorted_names = sorted_names(1:selectNum);
sorted_freq = sorted_freq(1:selectNum);

selectedCoeffs = find(feature_freq >=0.6);
selNames    = allName(selectedCoeffs);
betaSignSel = sign(coef(2:end)); 

% Map sorted features to GLM beta sign
[isSel, loc]  = ismember(sorted_names, selNames);
beta_sign_sorted = zeros(size(sorted_freq));
beta_sign_sorted(isSel) = betaSignSel(loc(isSel));

baseBlue  = [11, 97, 216]/255;
darkBlue  = baseBlue;                     % β > 0  → darker blue
lightBlue = 1 - (1-baseBlue)*0.50;        % β < 0  → lighter blue
grayCol   = 0.70 * [1 1 1];               % default gray

nFeatures = numel(sorted_freq);
bar_colors = repmat(grayCol, nFeatures, 1);

topN = min(length(selectedCoeffs), nFeatures);
for i = 1:topN
    if beta_sign_sorted(i) > 0
        bar_colors(i,:) = darkBlue;
    elseif beta_sign_sorted(i) < 0
        bar_colors(i,:) = lightBlue;
    else
        bar_colors(i,:) = grayCol; 
    end
end

figure(18); clf
b = bar(sorted_freq, 'FaceColor','flat', 'EdgeColor','none', 'BarWidth',0.6);
b.CData = bar_colors;
b.Annotation.LegendInformation.IconDisplayStyle = 'off';

sorted_names{4} = 'A-MeanBranchLength';
sorted_names{5} = 'S-FuncAxis';
sorted_names{8} = 'D-GlobalHeight';

yline(0.6 , 'k--', 'LineWidth', 2);

ylim([0 1]); yticks(0:0.2:1)
xticks(1:numel(sorted_names)); 
xticklabels(sorted_names); 
xtickangle(45)
ylabel('Selection frequency')

ax          = gca;
ax.Units    = 'centimeters';       
ax.Position = [2 4 11 5];       
axis(ax,'manual'); 

ax = gca;
ax.LineWidth = 1.5;
ax.Box = 'off';
ax.TickDir = 'out';
ax.FontSize = 12;
ax.XColor = 'k';
ax.YColor = 'k';

set(gcf, 'Color', 'w');
set(gca, 'TickLength', [0.01 0.01]);
set(gcf, 'Position', [140   661   522   380]);