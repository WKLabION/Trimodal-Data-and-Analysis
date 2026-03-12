clear; close all;
load('multimodal_data.mat');

%% Stability Selection Parameters
num_features = length(allName);
n_iterations = 1000;       % Number of subsampling iterations
subsample_ratio = 0.5;    % Ratio of data to sample each time
alpha = 0.5;              % LASSO (1.0), Elastic Net (0 < alpha < 1)
feature_count = zeros(num_features, 1);
feature_matrix = zeros(n_iterations, num_features);
q_target = round(sqrt(num_features));

parfor iter = 1:n_iterations
    % iter
    % Subsampling
    idx = randperm(length(Y), round(subsample_ratio * length(Y)));
    X_sub = X(idx, :);
    Y_sub = Y(idx);

    % Perform LASSO with CV to choose lambda
    [B, FitInfo] = lassoglm(X_sub, Y_sub, 'binomial', ...
        'Alpha', alpha,...
        'NumLambda', 100,...
        'MaxIter', 1000, ...
        'RelTol', 2e-3, ...
        'Standardize', true);

    [~, idx_best_q] = min(abs(FitInfo.DF - q_target));
    selected = B(:, idx_best_q) ~= 0;
    feature_count = feature_count + selected;
    feature_matrix(iter,:) = selected;
end

% Normalize to get selection frequency (0 to 1)
feature_freq = feature_count / n_iterations;
%% Visualize or export the result
% load('stability_selection_checkboard_dom.mat');
Thd = 0.6;
% Step 1: Filter out features with selection frequency > 0.1
nonzero_idx = feature_freq > 0.2;
filtered_freq = feature_freq(nonzero_idx);
filtered_names = allName(nonzero_idx);


% Step 2: Sort in descending order
[sorted_freq, sort_idx] = sort(filtered_freq, 'descend');
sorted_names = filtered_names(sort_idx);

% Step 3: Set bar colors
n = length(sorted_freq);
bar_colors = repmat([0.8 0.8 0.8], n, 1);  % Default: light gray

% Highlight top 5 features with gradient blue
top_k = min(5, n);
base_color = [11, 97, 216] / 255;
for i = 1:top_k
    % Calculate a lightening factor: smaller freq → lighter color
    freq_ratio = sorted_freq(i) / sorted_freq(1);  % Normalize w.r.t. max freq
    light_color = base_color + (1 - base_color) * (1 - freq_ratio);  % Blend with white
    light_color = min(light_color, 1);  % Ensure RGB values ≤ 1
    bar_colors(i, :) = light_color;
end

% Step 4: Create the bar plot
figure(18); clf;
b = bar(sorted_freq, 'FaceColor', 'flat', 'EdgeColor', 'none');
b.CData = bar_colors;
b.BarWidth = 0.6;
ylim([0 1]);

% Add reference line at 0.5
yline(Thd , 'k--', 'LineWidth', 2);

% Aesthetic improvements
xticks(1:length(sorted_names));
xticklabels(sorted_names);
xtickangle(45);
yticks(0:0.2:1);
ylabel('Selection Frequency');

% Aesthetic polish
ax = gca;
ax.LineWidth = 1.5;
ax.Box = 'off';
ax.TickDir = 'out';
ax.FontSize = 12;
ax.XColor = 'k';
ax.YColor = 'k';

set(gcf, 'Color', 'w');
set(gca, 'TickLength', [0.01 0.01]);
set(gcf, 'Position', [102   731   503   316]);
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

% ----- Mapping rule for simplified labels -----
yline(Thd , '--', 'LineWidth', 2,'Color',[0.2 0.2 0.2]);


% ----- Mapping rule for simplified labels -----
label_map = containers.Map( ...
    {'index_rna_in_nuc', 'index_dispersion', 'index_polarization', ...
     'index_rna_nuc_edge', 'index_mean_distance_cell','index_rna_cell_radius_0_500',...
     'index_peripheral_distribution','index_mean_distance_nuc'}, ...
    {'INI', 'DI', 'PI', 'NEI', 'MCDI','CEI','PDI','MNDI'});

% Create simplified tick labels
simplified_labels = cell(size(sorted_names));
for i = 1:numel(sorted_names)
    new_label = sorted_names{i};
    % Go through each key in the map
    keys = label_map.keys;
    for k = 1:numel(keys)
        if contains(new_label, keys{k})
            new_label = strrep(new_label, keys{k}, label_map(keys{k}));
        end
    end
    simplified_labels{i} = new_label;
end

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
