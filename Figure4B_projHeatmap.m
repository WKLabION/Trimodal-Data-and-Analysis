clear; close all;

path = 'G:\data_test\supp_Github\trimodal_data\';

fileList = dir(fullfile(path,'*.mat'));
[~,ind] = natsort({fileList.name});
fileList = fileList(ind);

allCellType = zeros(length(fileList),1);
allproj = [];
allFuncLabel = zeros(length(fileList),1);

for jj = 1:length(fileList)
    load([path,fileList(jj).name]);
    disp(fileList(jj).name);
    disp(['MouseID:',num2str(BasicParam.MouseID), ...
        ' NeuronID: ',num2str(BasicParam.NeuronID)]);
    allFuncLabel(jj) = Function.FuncLabel;
    allproj(jj,:) = Structure.Proj.projLength;

    if strcmp(Structure.CellType,'PT')
        allCellType(jj) = 2;
    elseif strcmp(Structure.CellType,'IT')
        allCellType(jj) = 1;
    end

end

brainRegion = Structure.Proj.regionName;
%% Filter short brain regions
tmpThd = 10;
allprojFlt = allproj;
tmpShort = find(sum(allprojFlt(:,1:54),1)<tmpThd);
allprojFlt(:,tmpShort) = [];

brainRegionFlt = brainRegion;
brainRegionFlt(tmpShort) = [];
%% Remove axon arbor passing brain regions
exlucdeRegionNames = {'HIP','ZI','RT','OP','MPT','TRN','SCiw','VENT'};
exlucdeRegionIdx = zeros(length(exlucdeRegionNames),1);
for ii = 1:length(exlucdeRegionNames)
exlucdeRegionIdx(ii) = find(strcmp(brainRegionFlt, exlucdeRegionNames{ii}));
end

allprojFlt(:,exlucdeRegionIdx) = [];
brainRegionFlt(exlucdeRegionIdx) = [];

brainRegionFinal = brainRegionFlt;
for ii = 1:length(brainRegionFinal)
    if contains(brainRegionFinal{ii},'-contra')
        tmp = brainRegionFinal{ii};
        brainRegionFinal{ii} = tmp(1:end-7);
    end
end
%% Clustering within Functional groups
allCellTypeFlt = allCellType;
funcLabel = allFuncLabel;

% --- Separate PT and IT neuron info ---
tmpIT = find(allCellTypeFlt == 1);
IT_proj = allprojFlt(tmpIT, :);
IT_func = funcLabel(tmpIT);
IT_fileList = fileList(tmpIT);
IT_cellType = allCellTypeFlt(tmpIT); 

tmpPT = find(allCellTypeFlt == 2);
PT_proj = allprojFlt(tmpPT, :);
PT_func = funcLabel(tmpPT);
PT_fileList = fileList(tmpPT);
PT_cellType = allCellTypeFlt(tmpPT);

% --- Define order of processing ---
cellTypes = {'PT', 'IT'};
funcOrder = [1, 2, 0];

% --- Initialize final output containers ---
projAll = [];
funcAll = [];
fileListAll = [];
cellTypeAll = [];

% --- Loop over cell types and function labels in desired order ---
for c = 1:length(cellTypes)
    cellType = cellTypes{c};
    if strcmp(cellType, 'PT')
        proj = PT_proj;
        func = PT_func;
        fileList = PT_fileList;
        typeArray = PT_cellType;
    else
        proj = IT_proj;
        func = IT_func;
        fileList = IT_fileList;
        typeArray = IT_cellType;
    end

    for f = funcOrder
        idx = find(func == f);
        if ~isempty(idx)
            % Cluster this subgroup
            [projClustered, order] = pdistCluster(proj(idx, :));

            % Apply order to all relevant metadata
            projAll = [projAll; projClustered];
            funcAll = [funcAll; func(idx(order))];
            fileListAll = [fileListAll; fileList(idx(order))];
            cellTypeAll = [cellTypeAll; typeArray(idx(order))];
        end
    end
end
%% Plot heatmap
figure(25); imagesc(projAll');

cmap = white2red(100); colormap(cmap); 
clim([0 10]);
xticks(40:40:200);
yticks(1:length(brainRegionFinal));
yticklabels(brainRegionFinal);

set(gca,'TickDir','out');
set(gca, 'FontSize', 16);
set(gcf, 'Position', [597   87   911   1060]);
set(gca,'box','off')

ax=gca; 
ax.YAxis.TickLength = [0 0];
ax.LineWidth=2;
outerpos = ax.OuterPosition;
ti = ax.TightInset; 
left = outerpos(1) + ti(1);
bottom = outerpos(2) + ti(2);
ax_width = outerpos(3) - ti(1) - ti(3);
ax_height = outerpos(4) - ti(2) - ti(4);
ax.Position = [left bottom ax_width ax_height];


function [checkBoardMatrix,regionOrder] = pdistCluster(checkBoardMatrix)
regionDistances = pdist(checkBoardMatrix, 'euclidean'); 
regionLinkageTree = linkage(regionDistances, 'average');
regionOrder = optimalleaforder(regionLinkageTree, regionDistances);
checkBoardMatrix = checkBoardMatrix(regionOrder,:);

end

function cmap = white2red(numColors)
% Create a matrix to hold the RGB values
cmap = zeros(numColors, 3);

% Fill the colormap
for i = 1:numColors
    cmap(i, 1) = 1;
    cmap(i, 2) = 1 - (i - 1) / (numColors - 1);
    cmap(i, 3) = 1 - (i - 1) / (numColors - 1);
end
end