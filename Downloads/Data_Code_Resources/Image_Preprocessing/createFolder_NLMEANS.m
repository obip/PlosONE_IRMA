% Creates needed folders for NLMEANS images
% Splits all train and test into 'class' folders. This structure is needed for tensorflow training
% Author: Obioma Pelka

all2008_Train = missingRemoved_2008_train;
all2008_Test = missingRemoved_2008_test;

% create unique for flat hierarchy
[Unique_08,~,~] = unique(all2008_Train(:,2));

% create subfolder
for i=1:length(Unique_08_A1)  
    mkdir(strcat('/home/pelka/Documents/datairma/special/nlmeans/2008/T/train/',Unique_08_A1{i,1}));
    mkdir(strcat('/home/pelka/Documents/datairma/special/nlmeans/2008/T/test/',Unique_08_A1{i,1}));

end 

for i=1:length(Unique_08_A2)  
    mkdir(strcat('/home/pelka/Documents/datairma/special/nlmeans/2008/D/train/',Unique_08_A2{i,1}));
    mkdir(strcat('/home/pelka/Documents/datairma/special/nlmeans/2008/D/test/',Unique_08_A2{i,1}));
end 

for i=1:length(Unique_08_A3)
    mkdir(strcat('/home/pelka/Documents/datairma/special/nlmeans/2008/A/train/',Unique_08_A3{i,1}));
    mkdir(strcat('/home/pelka/Documents/datairma/special/nlmeans/2008/A/test/',Unique_08_A3{i,1}));

end 

for i=1:length(Unique_08_A4) 
    mkdir(strcat('/home/pelka/Documents/datairma/special/nlmeans/2008/B/train/',Unique_08_A4{i,1}));
    mkdir(strcat('/home/pelka/Documents/datairma/special/nlmeans/2008/B/test/',Unique_08_A4{i,1}));
end 

for i=1:length(Unique_08)
    mkdir(strcat('/home/pelka/Documents/datairma/special/nlmeans/2008/Flat/train/',Unique_08{i,1}));
    mkdir(strcat('/home/pelka/Documents/datairma/special/nlmeans/2008/Flat/test/',Unique_08{i,1}));
end 


% create folders for Train
for j=1:length(all2008_Train)
    disp(strcat('Processing Train : ',num2str(j)));
    imageID = all2008_Train{j,1};
    
    % nlmeans
    imFileID = strcat('/home/pelka/Documents/datairma/special/nlmeans/allImages/',num2str(imageID),'.jpg');
    if exist(imFileID, 'file') == 2
        img = imread(imFileID);
        % T
        class = all2008_Train{j,3};
        destiFile = strcat('/home/pelka/Documents/datairma/special/nlmeans/2008/T/train/',num2str(class),'/',num2str(imageID),'.jpg');
        imwrite(img,destiFile,'jpg');
        % D
        class = all2008_Train{j,4};
        destiFile = strcat('/home/pelka/Documents/datairma/special/nlmeans/2008/D/train/',num2str(class),'/',num2str(imageID),'.jpg');
        imwrite(img,destiFile,'jpg');
        % A
        class = all2008_Train{j,5};
        destiFile = strcat('/home/pelka/Documents/datairma/special/nlmeans/2008/A/train/',num2str(class),'/',num2str(imageID),'.jpg');
        imwrite(img,destiFile,'jpg');
        % B
        class = all2008_Train{j,6};
        destiFile = strcat('/home/pelka/Documents/datairma/special/nlmeans/2008/B/train/',num2str(class),'/',num2str(imageID),'.jpg');
        imwrite(img,destiFile,'jpg');
        % Flat
        class = all2008_Train{j,2};
        destiFile = strcat('/home/pelka/Documents/datairma/special/nlmeans/2008/Flat/train/',num2str(class),'/',num2str(imageID),'.jpg');
        imwrite(img,destiFile,'jpg');
    end
    
end


% create folders for test
for j=1:length(all2008_Test)
    disp(strcat('Processing Test : ',num2str(j)));
    imageID = all2008_Test{j,1};
    
    % nlmeans
    imFileID = strcat('/home/pelka/Documents/datairma/special/nlmeans/allImages/',num2str(imageID),'.jpg');
    if exist(imFileID, 'file') == 2
        img = imread(imFileID);
        % T
        class = all2008_Test{j,3};
        destiFile = strcat('/home/pelka/Documents/datairma/special/nlmeans/2008/T/test/',num2str(class),'/',num2str(imageID),'.jpg');
        imwrite(img,destiFile,'jpg');
        % D
        class = all2008_Test{j,4};
        destiFile = strcat('/home/pelka/Documents/datairma/special/nlmeans/2008/D/test/',num2str(class),'/',num2str(imageID),'.jpg');
        imwrite(img,destiFile,'jpg');
        % A
        class = all2008_Test{j,5};
        destiFile = strcat('/home/pelka/Documents/datairma/special/nlmeans/2008/A/test/',num2str(class),'/',num2str(imageID),'.jpg');
        imwrite(img,destiFile,'jpg');
        % B
        class = all2008_Test{j,6};
        destiFile = strcat('/home/pelka/Documents/datairma/special/nlmeans/2008/B/test/',num2str(class),'/',num2str(imageID),'.jpg');
        imwrite(img,destiFile,'jpg');
        % Flat
        class = all2008_Test{j,2};
        destiFile = strcat('/home/pelka/Documents/datairma/special/nlmeans/2008/Flat/test/',num2str(class),'/',num2str(imageID),'.jpg');
        imwrite(img,destiFile,'jpg');
    end
end