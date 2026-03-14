%% load data
clear; close all;

path = 'trimodal_data\';

fileList = dir(fullfile(path,'*.mat'));
[~,ind] = natsort({fileList.name});
fileList = fileList(ind);

allMouseID = zeros(length(fileList),1);
allSliceID = zeros(length(fileList),1);

allFuncLabel = zeros(length(fileList),1);

allCellType = zeros(length(fileList),1);
allSomaInfo = zeros(length(fileList),4);
allAxonLength = zeros(length(fileList),1);
allProj = [];
paramStructArray = [];
allQC = zeros(length(fileList),3);

allFISH = zeros(length(fileList),30);
allFISHNeighbor = zeros(length(fileList),30);
allVol = zeros(length(fileList),1);
allRNAloc = zeros(length(fileList),240);

trimodalIdx = [];

for jj = 1:length(fileList)

    load([path,fileList(jj).name]);

    allSomaInfo(jj,:) = ...
        [Structure.SomaInfo.x,Structure.SomaInfo.y,Structure.SomaInfo.z,Structure.SomaInfo.depth] / 1000;
    
    if strcmp(Structure.CellType,'PT')
        allCellType(jj) = 2;
    elseif strcmp(Structure.CellType,'IT')
        allCellType(jj) = 1;
    end

    allMouseID(jj) = BasicParam.MouseID;


    disp(fileList(jj).name);

    allFuncLabel(jj) = Function.FuncLabel;

    allAxonLength(jj) = Structure.AxonParam.axonTotalLength;

    allSomaInfo(jj,:) = ...
        [Structure.SomaInfo.x,Structure.SomaInfo.y,Structure.SomaInfo.z,Structure.SomaInfo.depth] / 1000;

    allProj(jj,:) = Structure.Proj.projLength;
    allQC(jj,:) = Structure.QC;
    if strcmp(Structure.CellType,'PT')
        allCellType(jj) = 2; 
    elseif strcmp(Structure.CellType,'IT')
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
    paramStruct.apicalLength                = NaN;
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
    if isfield(dend, 'apicalLength'),                 paramStruct.apicalLength = dend.apicalLength; end
    if isfield(dend, 'trunkLength'),                 paramStruct.trunkLength = dend.trunkLength; end
    if isfield(dend, 'tuftLength'),                  paramStruct.tuftLength = dend.tuftLength; end
    if isfield(dend, 'basalLength'),                 paramStruct.basalLength = dend.basalLength; end
    if isfield(dend, 'basalBranchNum'),              paramStruct.basalBranchNum = dend.basalBranchNum; end
    if isfield(dend, 'basalVolume'),                 paramStruct.basalVolume = dend.basalVolume; end

    paramStructArray = [paramStructArray; paramStruct];
    
    if isempty(Molecular)
        continue;
    end

    trimodalIdx = [trimodalIdx,jj];
    
    allSliceID(jj) = Molecular.SliceID;
    allFISH(jj,:) = Molecular.Puncta;
    allFISHNeighbor(jj,:) = Molecular.Neighborhood;
    allVol(jj,:) = Molecular.Volume;
    allRNAloc(jj,:) = struct2array(Molecular.RNALoc);
end

neuronParamTable = struct2table(paramStructArray);

% brain region, marker name
somaInfoName = {'x','y','z','depth'};
brainRegion = Structure.Proj.regionName;
geneName = Molecular.Marker;
RNAlocName = fieldnames(Molecular.RNALoc);

fileListFlt = fileList(trimodalIdx);
allMouseIDFlt = allMouseID(trimodalIdx);
allSliceIDFlt = allSliceID(trimodalIdx);

allFuncLabelFlt = allFuncLabel(trimodalIdx);

allCellTypeFlt = allCellType(trimodalIdx);
allProjFlt = allProj(trimodalIdx,:);
allAxonLengthFlt = allAxonLength(trimodalIdx);
allSomaInfoFlt = allSomaInfo(trimodalIdx,:);
neuronParamTableFlt = neuronParamTable(trimodalIdx,:);
allQCFlt = allQC(trimodalIdx,:);

allFISHFlt = allFISH(trimodalIdx,:);
allFISHNeighborFlt = allFISHNeighbor(trimodalIdx,:);
allRNAlocFlt = allRNAloc(trimodalIdx,:);
allVolFlt = allVol(trimodalIdx);

%% Gene normalization
sliceGroup = [];
n = 1;
allvisit = zeros(length(allMouseIDFlt),1);
sliceGroup{n} = 1;
allvisit(n) = 1;
currentMouseID = allMouseIDFlt(n);
currentSliceID = allSliceIDFlt(n);
while sum(allvisit) < length(allMouseIDFlt)

    for ii = 1:length(allMouseIDFlt)
        if allvisit(ii) == 1
            continue;
        end

        tmpMouseID = allMouseIDFlt(ii);
        tmpSliceID = allSliceIDFlt(ii);
        if currentMouseID == tmpMouseID && currentSliceID == tmpSliceID
            sliceGroup{n} = [sliceGroup{n},ii];
            allvisit(ii) = 1;
        end
    end

    tmp = find(allvisit == 0);
    if ~isempty(tmp)
        n = n + 1;
        sliceGroup{n} = tmp(1);
        currentMouseID = allMouseIDFlt(tmp(1));
        currentSliceID = allSliceIDFlt(tmp(1));
        allvisit(tmp(1)) = 1;
    end

end

% normalize gene
allFISHNormFlt = allFISHFlt;

% P_cell / P_slice_Eef2 / V
for ii = 1:length(sliceGroup)
    tmpGroup = sliceGroup{ii};
    tmpNeighbor = mean(allFISHNeighborFlt(tmpGroup,3),1);
    allFISHNormFlt(tmpGroup,:) = allFISHNormFlt(tmpGroup,:) ./ tmpNeighbor;
end 
tmpRatio = allVolFlt / max(allVolFlt);
allFISHNormFlt = allFISHNormFlt ./ tmpRatio;
%% filter IT
IT_idx = find(allCellTypeFlt~=2);
fileListFlt(IT_idx) = [];
allFuncLabelFlt(IT_idx) = [];

allCellTypeFlt(IT_idx) = []; 
allProjFlt(IT_idx,:) = [];
allAxonLengthFlt(IT_idx) = [];
allSomaInfoFlt(IT_idx,:) = [];
allQCFlt(IT_idx,:) = [];
neuronParamTableFlt(IT_idx,:) = [];

allFISHNormFlt(IT_idx,:) = [];
allRNAlocFlt(IT_idx,:) = [];
%% functional axis (Checkerboard vs None)
IT_idxBimodal = find(allCellType~=2);

tmpBimodalIdx = 1:length(allCellType);
tmpBimodalIdx(IT_idxBimodal) = [];
funcLabelBimodal = allFuncLabel;
funcLabelBimodal(IT_idxBimodal) = [];

allSomaInfoBimodal = allSomaInfo;
allSomaInfoBimodal(IT_idxBimodal,:) = [];

validIdx = (funcLabelBimodal == 0 | funcLabelBimodal == 1);
tmpBimodalIdx = tmpBimodalIdx(validIdx);
XZ = allSomaInfoBimodal(validIdx, [1, 3]);
XZ(:,1) = XZ(:,1) - 5.7;
labels = funcLabelBimodal(validIdx);

% Fit LDA
ldaModel = fitcdiscr(XZ, labels);
w = ldaModel.Coeffs(1,2).Linear;
w = w / norm(w);

% calculate distance to the functional axis
signed_dists = computeLDADistanceXZ(allSomaInfoBimodal(validIdx,:), funcLabelBimodal(validIdx));

signed_distsFlt = signed_dists(ismember(tmpBimodalIdx, trimodalIdx));

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

%% filter less projecting brain region
tmpThd = 20;
tmpShort = find(allAxonLengthFlt < tmpThd);

tmpThd = 0.2;
tmpIdx = 1:size(allQCFlt,1);
tmpIdx(tmpShort) = [];
tmpProjRatio = mean(allProjFlt(tmpIdx,:)>1,1);

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
%% ------------------- BUILD MATRIX -------------------
notInclude = 2;                               % drop gratings in this example
keep_rows = allFuncLabelFlt ~= notInclude;          % rows kept for X blocks

% Projection
X1 = allProjFlt;
X1_ = X1(keep_rows,:);                        

% Genes (exclude Eef2)
X2 = allFISHNormFlt;                          
X2(:,3) = [];                                 % remove Eef2
geneNameFlt = geneName; 
geneNameFlt(3) = [];
X2_ = X2(keep_rows,:);                        

% Soma location
X3 = allSomaInfoFlt;
X3(:,[1,3]) = [];
somaInfoNameFlt = somaInfoName([2,4]);
X3_ = [X3(keep_rows,:), signed_distsFlt];  
somaInfoNameFlt{3} = 'FuncAxis';

% Axon / Dendrite params 
X4_ax_ = axonData(keep_rows,:);             
X5_de_ = dendriteData(keep_rows,:);      

% RNA localization
% PCA
X6_full = zscore(allRNAlocFlt);
[coeff_rna, score_rna, latent_rna, ~, explained_rna] = pca(X6_full, 'Rows','complete');

K = 30;                         
X6_pc = score_rna(:, 1:K);
RNAlocName_pc = arrayfun(@(k) sprintf('subRNA-PC%d', k), 1:K, 'uni', false);
X6_ = X6_pc(keep_rows,:);


% QC (basal, apical, axon)
QC_ = allQCFlt(keep_rows,:);                  % [:,1]=basal, [:,2]=apical, [:,3]=axon

% -----  Good/bad masks -----
mask_basal  = QC_(:,1) > 0;
mask_apical = QC_(:,2) > 0;
mask_axon   = QC_(:,3) > 0;

% Projections → axon QC
M1   = repmat(mask_axon, 1, size(X1_,2));
% Genes → treat NaN as bad (per-cell, per-gene)
M2   = ~isnan(X2_);
% Soma → NaN as bad
M3   = ~isnan(X3_);
% Axon params → axon QC
M4ax = repmat(mask_axon, 1, size(X4_ax_,2));

% Dendrite params (13 cols): 1–8 global, 9–10 apical, 11–13 basal
[N_keep, Pde] = size(X5_de_);
M5de = false(N_keep, Pde);

idx_global = 1:8;
idx_apical = [9:10,14];
idx_basal  = 11:13;

M5de(:, idx_global) = repmat(mask_basal & mask_apical, 1, numel(idx_global));
M5de(:, idx_apical) = repmat(mask_apical,             1, numel(idx_apical));
M5de(:, idx_basal ) = repmat(mask_basal ,             1, numel(idx_basal));

% RNAloc → treat NaN as bad (per-cell, per-gene)
M6 = true(N_keep,length(RNAlocName_pc));

% ----- Concatenate blocks & masks (column-aligned) -----
X_raw = [X1_,  X2_,  X3_,  X4_ax_,  X5_de_,  X6_];
M_raw = [M1 ,  M2 ,  M3 ,  M4ax ,   M5de ,   M6 ];

allName = [brainRegionFlt', geneNameFlt, somaInfoNameFlt, ...
    axonParams, dendriteParams, RNAlocName_pc];

% ----- No-leak standardization (μ/σ from good cells only), then zero bad -----
P = size(X_raw,2);
mu = zeros(1,P); sd = ones(1,P);
for j = 1:P
    g = M_raw(:,j);
    xj = X_raw(:,j);
    if any(g)
        mu(j) = mean(xj(g));
        s     = std(xj(g),0);
        sd(j) = (s>0)*s + (s==0);      % avoid div-by-0
    else
        mu(j) = 0; sd(j) = 1;          % neutralize if no good cells at all
    end
end
Xz = (X_raw - mu) ./ sd;
Xz(~M_raw) = 0;                        % masked entries → exactly mean (0 in z-space)

X = Xz;                             


% ----- Build Y -----
Y_full = zeros(length(allFuncLabelFlt),1);
Y_full(allFuncLabelFlt == 1) = 1;    % checkerboard
Y_full(allFuncLabelFlt == 0) = 2;    % none
Y_keep = Y_full(keep_rows);

drop = (Y_keep == 0);
Y = Y_keep(~drop);
Y(Y==2) = 0;

%% save
save('multimodal_data.mat','X','Y','allName');


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
