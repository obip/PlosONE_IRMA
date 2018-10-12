% create bok for train set
entries = missingRemoved_2008_B;

% CLAHE
% TTTTTTTTTTTTTTTTT
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A1)
     filesSubsets{i} = Unique_08_A1{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A1));
for i=1:length(Unique_08_A1)
    class =  Unique_08_A1{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,3});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/CLAHE/Train/T/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyClahe,names,'clahe') ;
        save(fullfile(strcat('Features/CLAHE/Train/T/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% DDDDDDDDDDDDDDDDDDDDDDDDDDDDD
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A2)
     filesSubsets{i} = Unique_08_A2{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A2));
for i=1:length(Unique_08_A2)
    class =  Unique_08_A2{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,4});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/CLAHE/Train/D/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyClahe,names,'clahe') ;
        save(fullfile(strcat('Features/CLAHE/Train/D/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% AAAAAAAAAAAAAAAAAAAAAAAAAAA
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A3)
     filesSubsets{i} = Unique_08_A3{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A3));
for i=1:length(Unique_08_A3)
    class =  Unique_08_A3{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,5});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/CLAHE/Train/A/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyClahe,names,'clahe') ;
        save(fullfile(strcat('Features/CLAHE/Train/A/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% BBBBBBBBBBBBBBBBBBBBB
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A4)
     filesSubsets{i} = Unique_08_A4{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A4));
for i=1:length(Unique_08_A4)
    class =  Unique_08_A4{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,6});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/CLAHE/Train/B/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyClahe,names,'clahe') ;
        save(fullfile(strcat('Features/CLAHE/Train/B/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end

% Flat
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08)
     filesSubsets{i} = Unique_08{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08));
for i=1:length(Unique_08)
    class =  Unique_08{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,2});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/CLAHE/Train/Flat/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyClahe,names,'clahe') ;
        save(fullfile(strcat('Features/CLAHE/Train/Flat/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end

%% NORMAL

% TTTTTTTTTTTTTTTTT
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A1)
     filesSubsets{i} = Unique_08_A1{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A1));
for i=1:length(Unique_08_A1)
    class =  Unique_08_A1{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,3});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/NORMAL/Train/T/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyNormal,names,'normal') ;
        save(fullfile(strcat('Features/NORMAL/Train/T/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% DDDDDDDDDDDDDDDDDDDDDDDDDDDDD
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A2)
     filesSubsets{i} = Unique_08_A2{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A2));
for i=1:length(Unique_08_A2)
    class =  Unique_08_A2{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,4});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/NORMAL/Train/D/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyNormal,names,'normal') ;
        save(fullfile(strcat('Features/NORMAL/Train/D/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% AAAAAAAAAAAAAAAAAAAAAAAAAAA
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A3)
     filesSubsets{i} = Unique_08_A3{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A3));
for i=1:length(Unique_08_A3)
    class =  Unique_08_A3{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,5});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/NORMAL/Train/A/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyNormal,names,'normal') ;
        save(fullfile(strcat('Features/NORMAL/Train/A/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% BBBBBBBBBBBBBBBBBBBBB
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A4)
     filesSubsets{i} = Unique_08_A4{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A4));
for i=1:length(Unique_08_A4)
    class =  Unique_08_A4{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,6});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/NORMAL/Train/B/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyNormal,names,'normal') ;
        save(fullfile(strcat('Features/NORMAL/Train/B/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end

% Flat
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08)
     filesSubsets{i} = Unique_08{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08));
for i=1:length(Unique_08)
    class =  Unique_08{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,2});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/NORMAL/Train/Flat/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyNormal,names,'normal') ;
        save(fullfile(strcat('Features/NORMAL/Train/Flat/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end
%% LAYERED

% TTTTTTTTTTTTTTTTT
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A1)
     filesSubsets{i} = Unique_08_A1{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A1));
for i=1:length(Unique_08_A1)
    class =  Unique_08_A1{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,3});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/LAYERED/Train/T/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyEnhanced,names,'enhanced') ;
        save(fullfile(strcat('Features/LAYERED/Train/T/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% DDDDDDDDDDDDDDDDDDDDDDDDDDDDD
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A2)
     filesSubsets{i} = Unique_08_A2{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A2));
for i=1:length(Unique_08_A2)
    class =  Unique_08_A2{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,4});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/LAYERED/Train/D/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyEnhanced,names,'enhanced') ;
        save(fullfile(strcat('Features/LAYERED/Train/D/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% AAAAAAAAAAAAAAAAAAAAAAAAAAA
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A3)
     filesSubsets{i} = Unique_08_A3{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A3));
for i=1:length(Unique_08_A3)
    class =  Unique_08_A3{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,5});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/LAYERED/Train/A/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyEnhanced,names,'enhanced') ;
        save(fullfile(strcat('Features/LAYERED/Train/A/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% BBBBBBBBBBBBBBBBBBBBB
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A4)
     filesSubsets{i} = Unique_08_A4{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A4));
for i=1:length(Unique_08_A4)
    class =  Unique_08_A4{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,6});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/LAYERED/Train/B/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyEnhanced,names,'enhanced') ;
        save(fullfile(strcat('Features/LAYERED/Train/B/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end

% Flat
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08)
     filesSubsets{i} = Unique_08{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08));
for i=1:length(Unique_08)
    class =  Unique_08{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,2});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/LAYERED/Train/Flat/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyEnhanced,names,'enhanced') ;
        save(fullfile(strcat('Features/LAYERED/Train/Flat/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end
%% PADDING

% TTTTTTTTTTTTTTTTT
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A1)
     filesSubsets{i} = Unique_08_A1{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A1));
for i=1:length(Unique_08_A1)
    class =  Unique_08_A1{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,3});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/PADDING/Train/T/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyBlownUp,names,'blownUp') ;
        save(fullfile(strcat('Features/PADDING/Train/T/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% DDDDDDDDDDDDDDDDDDDDDDDDDDDDD
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A2)
     filesSubsets{i} = Unique_08_A2{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A2));
for i=1:length(Unique_08_A2)
    class =  Unique_08_A2{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,4});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/PADDING/Train/D/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyBlownUp,names,'blownUp') ;
        save(fullfile(strcat('Features/PADDING/Train/D/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% AAAAAAAAAAAAAAAAAAAAAAAAAAA
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A3)
     filesSubsets{i} = Unique_08_A3{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A3));
for i=1:length(Unique_08_A3)
    class =  Unique_08_A3{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,5});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/PADDING/Train/A/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyBlownUp,names,'blownUp') ;
        save(fullfile(strcat('Features/PADDING/Train/A/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% BBBBBBBBBBBBBBBBBBBBB
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A4)
     filesSubsets{i} = Unique_08_A4{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A4));
for i=1:length(Unique_08_A4)
    class =  Unique_08_A4{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,6});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/PADDING/Train/B/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyBlownUp,names,'blownUp') ;
        save(fullfile(strcat('Features/PADDING/Train/B/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end

% Flat
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08)
     filesSubsets{i} = Unique_08{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08));
for i=1:length(Unique_08)
    class =  Unique_08{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,2});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/PADDING/Train/Flat/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyBlownUp,names,'blownUp') ;
        save(fullfile(strcat('Features/PADDING/Train/Flat/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end
%% PADDINGLAYERED

% TTTTTTTTTTTTTTTTT
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A1)
     filesSubsets{i} = Unique_08_A1{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A1));
for i=1:length(Unique_08_A1)
    class =  Unique_08_A1{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,3});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/PADDINGLAYERED/Train/T/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyBlownUpEnhanced,names,'blownUpEnhanced') ;
        save(fullfile(strcat('Features/PADDINGLAYERED/Train/T/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% DDDDDDDDDDDDDDDDDDDDDDDDDDDDD
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A2)
     filesSubsets{i} = Unique_08_A2{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A2));
for i=1:length(Unique_08_A2)
    class =  Unique_08_A2{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,4});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/PADDINGLAYERED/Train/D/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyBlownUpEnhanced,names,'blownUpEnhanced') ;
        save(fullfile(strcat('Features/PADDINGLAYERED/Train/D/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% AAAAAAAAAAAAAAAAAAAAAAAAAAA
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A3)
     filesSubsets{i} = Unique_08_A3{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A3));
for i=1:length(Unique_08_A3)
    class =  Unique_08_A3{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,5});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/PADDINGLAYERED/Train/A/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyBlownUpEnhanced,names,'blownUpEnhanced') ;
        save(fullfile(strcat('Features/PADDINGLAYERED/Train/A/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% BBBBBBBBBBBBBBBBBBBBB
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A4)
     filesSubsets{i} = Unique_08_A4{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A4));
for i=1:length(Unique_08_A4)
    class =  Unique_08_A4{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,6});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/PADDINGLAYERED/Train/B/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyBlownUpEnhanced,names,'blownUpEnhanced') ;
        save(fullfile(strcat('Features/PADDINGLAYERED/Train/B/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end

% Flat
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08)
     filesSubsets{i} = Unique_08{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08));
for i=1:length(Unique_08)
    class =  Unique_08{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,2});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/PADDINGLAYERED/Train/Flat/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyBlownUpEnhanced,names,'blownUpEnhanced') ;
        save(fullfile(strcat('Features/PADDINGLAYERED/Train/Flat/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end
%% NLMEANS
% TTTTTTTTTTTTTTTTT
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A1)
     filesSubsets{i} = Unique_08_A1{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A1));
for i=1:length(Unique_08_A1)
    class =  Unique_08_A1{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,3});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/NLMEANS/Train/T/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyNlmeans,names,'nlmeans') ;
        save(fullfile(strcat('Features/NLMEANS/Train/T/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% DDDDDDDDDDDDDDDDDDDDDDDDDDDDD
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A2)
     filesSubsets{i} = Unique_08_A2{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A2));
for i=1:length(Unique_08_A2)
    class =  Unique_08_A2{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,4});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/NLMEANS/Train/D/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyNlmeans,names,'nlmeans') ;
        save(fullfile(strcat('Features/NLMEANS/Train/D/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% AAAAAAAAAAAAAAAAAAAAAAAAAAA
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A3)
     filesSubsets{i} = Unique_08_A3{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A3));
for i=1:length(Unique_08_A3)
    class =  Unique_08_A3{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,5});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/NLMEANS/Train/A/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyNlmeans,names,'nlmeans') ;
        save(fullfile(strcat('Features/NLMEANS/Train/A/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% BBBBBBBBBBBBBBBBBBBBB
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A4)
     filesSubsets{i} = Unique_08_A4{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A4));
for i=1:length(Unique_08_A4)
    class =  Unique_08_A4{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,6});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/NLMEANS/Train/B/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyNlmeans,names,'nlmeans') ;
        save(fullfile(strcat('Features/NLMEANS/Train/B/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end

% Flat
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08)
     filesSubsets{i} = Unique_08{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08));
for i=1:length(Unique_08)
    class =  Unique_08{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,2});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/NLMEANS/Train/Flat/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyNlmeans,names,'nlmeans') ;
        save(fullfile(strcat('Features/NLMEANS/Train/Flat/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


%%
%TEST
% create bok for train set
entries = missingRemoved_2008_A;
%%
% CLAHE
% TTTTTTTTTTTTTTTTT
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A1)
     filesSubsets{i} = Unique_08_A1{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A1));
for i=1:length(Unique_08_A1)
    class =  Unique_08_A1{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,3});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/CLAHE/Test/T/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyClahe,names,'clahe') ;
        save(fullfile(strcat('Features/CLAHE/Test/T/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% DDDDDDDDDDDDDDDDDDDDDDDDDDDDD
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A2)
     filesSubsets{i} = Unique_08_A2{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A2));
for i=1:length(Unique_08_A2)
    class =  Unique_08_A2{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,4});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/CLAHE/Test/D/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyClahe,names,'clahe') ;
        save(fullfile(strcat('Features/CLAHE/Test/D/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% AAAAAAAAAAAAAAAAAAAAAAAAAAA
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A3)
     filesSubsets{i} = Unique_08_A3{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A3));
for i=1:length(Unique_08_A3)
    class =  Unique_08_A3{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,5});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/CLAHE/Test/A/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyClahe,names,'clahe') ;
        save(fullfile(strcat('Features/CLAHE/Test/A/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% BBBBBBBBBBBBBBBBBBBBB
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A4)
     filesSubsets{i} = Unique_08_A4{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A4));
for i=1:length(Unique_08_A4)
    class =  Unique_08_A4{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,6});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/CLAHE/Test/B/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyClahe,names,'clahe') ;
        save(fullfile(strcat('Features/CLAHE/Test/B/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end

% Flat
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08)
     filesSubsets{i} = Unique_08{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08));
for i=1:length(Unique_08)
    class =  Unique_08{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,2});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/CLAHE/Test/Flat/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyClahe,names,'clahe') ;
        save(fullfile(strcat('Features/CLAHE/Test/Flat/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end

%% NORMAL

% TTTTTTTTTTTTTTTTT
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A1)
     filesSubsets{i} = Unique_08_A1{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A1));
for i=1:length(Unique_08_A1)
    class =  Unique_08_A1{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,3});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/NORMAL/Test/T/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyNormal,names,'normal') ;
        save(fullfile(strcat('Features/NORMAL/Test/T/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% DDDDDDDDDDDDDDDDDDDDDDDDDDDDD
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A2)
     filesSubsets{i} = Unique_08_A2{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A2));
for i=1:length(Unique_08_A2)
    class =  Unique_08_A2{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,4});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/NORMAL/Test/D/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyNormal,names,'normal') ;
        save(fullfile(strcat('Features/NORMAL/Test/D/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% AAAAAAAAAAAAAAAAAAAAAAAAAAA
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A3)
     filesSubsets{i} = Unique_08_A3{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A3));
for i=1:length(Unique_08_A3)
    class =  Unique_08_A3{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,5});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/NORMAL/Test/A/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyNormal,names,'normal') ;
        save(fullfile(strcat('Features/NORMAL/Test/A/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% BBBBBBBBBBBBBBBBBBBBB
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A4)
     filesSubsets{i} = Unique_08_A4{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A4));
for i=1:length(Unique_08_A4)
    class =  Unique_08_A4{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,6});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/NORMAL/Test/B/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyNormal,names,'normal') ;
        save(fullfile(strcat('Features/NORMAL/Test/B/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end

% Flat
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08)
     filesSubsets{i} = Unique_08{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08));
for i=1:length(Unique_08)
    class =  Unique_08{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,2});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/NORMAL/Test/Flat/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyNormal,names,'normal') ;
        save(fullfile(strcat('Features/NORMAL/Test/Flat/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end
%% LAYERED

% TTTTTTTTTTTTTTTTT
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A1)
     filesSubsets{i} = Unique_08_A1{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A1));
for i=1:length(Unique_08_A1)
    class =  Unique_08_A1{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,3});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/LAYERED/Test/T/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyEnhanced,names,'enhanced') ;
        save(fullfile(strcat('Features/LAYERED/Test/T/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% DDDDDDDDDDDDDDDDDDDDDDDDDDDDD
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A2)
     filesSubsets{i} = Unique_08_A2{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A2));
for i=1:length(Unique_08_A2)
    class =  Unique_08_A2{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,4});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/LAYERED/Test/D/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyEnhanced,names,'enhanced') ;
        save(fullfile(strcat('Features/LAYERED/Test/D/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% AAAAAAAAAAAAAAAAAAAAAAAAAAA
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A3)
     filesSubsets{i} = Unique_08_A3{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A3));
for i=1:length(Unique_08_A3)
    class =  Unique_08_A3{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,5});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/LAYERED/Test/A/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyEnhanced,names,'enhanced') ;
        save(fullfile(strcat('Features/LAYERED/Test/A/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% BBBBBBBBBBBBBBBBBBBBB
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A4)
     filesSubsets{i} = Unique_08_A4{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A4));
for i=1:length(Unique_08_A4)
    class =  Unique_08_A4{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,6});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/LAYERED/Test/B/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyEnhanced,names,'enhanced') ;
        save(fullfile(strcat('Features/LAYERED/Test/B/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end

% Flat
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08)
     filesSubsets{i} = Unique_08{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08));
for i=1:length(Unique_08)
    class =  Unique_08{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,2});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/LAYERED/Test/Flat/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyEnhanced,names,'enhanced') ;
        save(fullfile(strcat('Features/LAYERED/Test/Flat/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end
%% PADDING

% TTTTTTTTTTTTTTTTT
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A1)
     filesSubsets{i} = Unique_08_A1{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A1));
for i=1:length(Unique_08_A1)
    class =  Unique_08_A1{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,3});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/PADDING/Test/T/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyBlownUp,names,'blownUp') ;
        save(fullfile(strcat('Features/PADDING/Test/T/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% DDDDDDDDDDDDDDDDDDDDDDDDDDDDD
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A2)
     filesSubsets{i} = Unique_08_A2{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A2));
for i=1:length(Unique_08_A2)
    class =  Unique_08_A2{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,4});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/PADDING/Test/D/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyBlownUp,names,'blownUp') ;
        save(fullfile(strcat('Features/PADDING/Test/D/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% AAAAAAAAAAAAAAAAAAAAAAAAAAA
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A3)
     filesSubsets{i} = Unique_08_A3{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A3));
for i=1:length(Unique_08_A3)
    class =  Unique_08_A3{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,5});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/PADDING/Test/A/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyBlownUp,names,'blownUp') ;
        save(fullfile(strcat('Features/PADDING/Test/A/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% BBBBBBBBBBBBBBBBBBBBB
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A4)
     filesSubsets{i} = Unique_08_A4{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A4));
for i=1:length(Unique_08_A4)
    class =  Unique_08_A4{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,6});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/PADDING/Test/B/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyBlownUp,names,'blownUp') ;
        save(fullfile(strcat('Features/PADDING/Test/B/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end

% Flat
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08)
     filesSubsets{i} = Unique_08{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08));
for i=1:length(Unique_08)
    class =  Unique_08{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,2});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/PADDING/Test/Flat/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyBlownUp,names,'blownUp') ;
        save(fullfile(strcat('Features/PADDING/Test/Flat/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end
%% PADDINGLAYERED

% TTTTTTTTTTTTTTTTT
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A1)
     filesSubsets{i} = Unique_08_A1{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A1));
for i=1:length(Unique_08_A1)
    class =  Unique_08_A1{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,3});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/PADDINGLAYERED/Test/T/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyBlownUpEnhanced,names,'blownUpEnhanced') ;
        save(fullfile(strcat('Features/PADDINGLAYERED/Test/T/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% DDDDDDDDDDDDDDDDDDDDDDDDDDDDD
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A2)
     filesSubsets{i} = Unique_08_A2{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A2));
for i=1:length(Unique_08_A2)
    class =  Unique_08_A2{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,4});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/PADDINGLAYERED/Test/D/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyBlownUpEnhanced,names,'blownUpEnhanced') ;
        save(fullfile(strcat('Features/PADDINGLAYERED/Test/D/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% AAAAAAAAAAAAAAAAAAAAAAAAAAA
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A3)
     filesSubsets{i} = Unique_08_A3{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A3));
for i=1:length(Unique_08_A3)
    class =  Unique_08_A3{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,5});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/PADDINGLAYERED/Test/A/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyBlownUpEnhanced,names,'blownUpEnhanced') ;
        save(fullfile(strcat('Features/PADDINGLAYERED/Test/A/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% BBBBBBBBBBBBBBBBBBBBB
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A4)
     filesSubsets{i} = Unique_08_A4{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A4));
for i=1:length(Unique_08_A4)
    class =  Unique_08_A4{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,6});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/PADDINGLAYERED/Test/B/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyBlownUpEnhanced,names,'blownUpEnhanced') ;
        save(fullfile(strcat('Features/PADDINGLAYERED/Test/B/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end

% Flat
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08)
     filesSubsets{i} = Unique_08{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08));
for i=1:length(Unique_08)
    class =  Unique_08{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,2});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/PADDINGLAYERED/Test/Flat/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyBlownUpEnhanced,names,'blownUpEnhanced') ;
        save(fullfile(strcat('Features/PADDINGLAYERED/Test/Flat/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end
%% NLMEANS
% TTTTTTTTTTTTTTTTT
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A1)
     filesSubsets{i} = Unique_08_A1{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A1));
for i=1:length(Unique_08_A1)
    class =  Unique_08_A1{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,3});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/NLMEANS/Test/T/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyNlmeans,names,'nlmeans') ;
        save(fullfile(strcat('Features/NLMEANS/Test/T/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% DDDDDDDDDDDDDDDDDDDDDDDDDDDDD
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A2)
     filesSubsets{i} = Unique_08_A2{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A2));
for i=1:length(Unique_08_A2)
    class =  Unique_08_A2{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,4});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/NLMEANS/Test/D/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyNlmeans,names,'nlmeans') ;
        save(fullfile(strcat('Features/NLMEANS/Test/D/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% AAAAAAAAAAAAAAAAAAAAAAAAAAA
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A3)
     filesSubsets{i} = Unique_08_A3{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A3));
for i=1:length(Unique_08_A3)
    class =  Unique_08_A3{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,5});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/NLMEANS/Test/A/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyNlmeans,names,'nlmeans') ;
        save(fullfile(strcat('Features/NLMEANS/Test/A/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end


% BBBBBBBBBBBBBBBBBBBBB
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08_A4)
     filesSubsets{i} = Unique_08_A4{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08_A4));
for i=1:length(Unique_08_A4)
    class =  Unique_08_A4{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,6});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/NLMEANS/Test/B/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyNlmeans,names,'nlmeans') ;
        save(fullfile(strcat('Features/NLMEANS/Test/B/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end

% Flat
% group images with same class
filesSubsets = {};
for i=1:length(Unique_08)
     filesSubsets{i} = Unique_08{i};
end
filesSubsets = filesSubsets';
imagesWithClass = cell(length(Unique_08));
for i=1:length(Unique_08)
    class =  Unique_08{i};
    namesI = {};
    for j=1:length(entries)
        fileClass = num2str(entries{j,2});
        if strcmp(class,fileClass)
            namesI{end+1} = num2str(entries{j,1});
        end
    end
    imagesWithClass{i} = namesI';
end
imagesWithClass = imagesWithClass(:,1);

for index=1:1:length(imagesWithClass)
    fprintf('Processing %s\n', filesSubsets{index}) ;
    names = imagesWithClass{index,1};
    g = fullfile(strcat('Features/NLMEANS/Test/Flat/'),[char(filesSubsets{index}) '_hist.mat']);
    if ~exist(g, 'file')
        histograms = computeHistogramsSIFT(vocabularyNlmeans,names,'nlmeans') ;
        save(fullfile(strcat('Features/NLMEANS/Test/Flat/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
    end
end