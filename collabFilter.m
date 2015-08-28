function [best_model] = collabFilter(xlsFile)

if ~exist('xlsFile', 'var') || isempty(xlsFile), xlsFile = ...
    'C:\Users\Young Suk Cho\Downloads\jester_dataset_1_1\jester-data-1_sub.xls'; end

% Read xls file
C = loadXls(xlsFile);
CMat = cell2mat(cellfun(@str2num,C,'un',0));

a = 1;

function raw = loadXls(fileName)

[~,~,raw] = xlsread(fileName);

for i = 1:size(raw,1)
    for j = 1:size(raw,2)
        if ~ischar(raw(i,j))
            raw{i,j} = num2str(raw{i,j});
        end
    end
end
