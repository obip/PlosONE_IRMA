
% remove the three classes that were falsely represented in the training set
% this was order by the ImageCLEF 2009 organizer
% Author: Obioma Pelka

falseImages = [];
for i=1:length(missingRemoved_2008_train)
    disp(i);
    imageLabel = missingRemoved_2008_train{i,2};
    remove1 = '1121-120-450-700';
    remove2 = '1121-120-700-400';
    remove3 = '1121-490-913-700';
    if strcmp(imageLabel, remove1) || strcmp(imageLabel, remove2) || strcmp(imageLabel, remove3)
        falseImages = [falseImages; i];
    end
end
falseRemoved_2008 = missingRemoved_2008_train;
falseRemoved_2008(falseImages,:) = [];
