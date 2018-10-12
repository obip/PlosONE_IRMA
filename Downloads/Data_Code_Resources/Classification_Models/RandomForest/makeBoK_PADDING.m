% Creates Bag-Of-Keypoints features 
% PADDING images (train and test)
% Author: Obioma Pelka

%****************************************************************************
% TRAIN
%***************************************************************************
entries = all2008_Train;

% TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
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
    
    histograms = computeHistogramsSIFT(vocabularyPADDING,names,'blownUp',1) ;
    save(fullfile(strcat('Features/PADDING/Train/T/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
end

% DDDDDDDDDDDDDDDDDDDDDDDDDDDDD
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
    
    histograms = computeHistogramsSIFT(vocabularyPADDING,names,'blownUp',1) ;
    save(fullfile(strcat('Features/PADDING/Train/D/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
 
end

% AAAAAAAAAAAAAAAAAAAAAAAAAAA
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
    
    histograms = computeHistogramsSIFT(vocabularyPADDING,names,'blownUp',1) ;
    save(fullfile(strcat('Features/PADDING/Train/A/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
   
end

% BBBBBBBBBBBBBBBBBBBBB
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
   
    histograms = computeHistogramsSIFT(vocabularyPADDING,names,'blownUp',1) ;
    save(fullfile(strcat('Features/PADDING/Train/B/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
end

% Flat
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
   
    histograms = computeHistogramsSIFT(vocabularyPADDING,names,'blownUp',1) ;
    save(fullfile(strcat('Features/PADDING/Train/Flat/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;

end


%****************************************************************************
% TEST
%***************************************************************************


entries = all2008_Test;
% TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT

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
    
    histograms = computeHistogramsSIFT(vocabularyPADDING,names,'blownUp',1) ;
    save(fullfile(strcat('Features/PADDING/Test/T/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;
   
end

% DDDDDDDDDDDDDDDDDDDDDDDDDDDDD
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

    histograms = computeHistogramsSIFT(vocabularyPADDING,names,'blownUp',1) ;
    save(fullfile(strcat('Features/PADDING/Test/D/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;

end

% AAAAAAAAAAAAAAAAAAAAAAAAAAA
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

    histograms = computeHistogramsSIFT(vocabularyPADDING,names,'blownUp',1) ;
    save(fullfile(strcat('Features/PADDING/Test/A/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;

end

% BBBBBBBBBBBBBBBBBBBBB
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
    
    histograms = computeHistogramsSIFT(vocabularyPADDING,names,'blownUp',1) ;
    save(fullfile(strcat('Features/PADDING/Test/B/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;

end

% Flat
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
    
    histograms = computeHistogramsSIFT(vocabularyPADDING,names,'blownUp',1) ;
    save(fullfile(strcat('Features/PADDING/Test/Flat/'),[char(filesSubsets{index}) '_hist.mat']), 'names', 'histograms') ;

end
