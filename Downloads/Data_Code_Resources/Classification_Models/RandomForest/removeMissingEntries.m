% Remove entries from official image list distrubuted by the organizer
% The images to these entries are missing
% Author: Obioma Pelka
%% 2008

% T
missingImages = [];
for i=1:length(codesAll_08)
    disp(i);
    imageID = codesAll_08{i,1};
    imageFo = codesAll_08{i,7};
    
    imFileID = strcat('ImageCLEFmed2009_train.02/',num2str(imageID),'.png');
    if exist(imFileID, 'file') == 2
%         img = imread(imFileID);
%         destiFile = strcat(num2str(imageFo),'/',num2str(imageID),'.png');
%         imwrite(img,destiFile,'png');
    else
        missingImages = [missingImages; i];
    end
end
missingRemoved_2008_T = codesAll_08;
missingRemoved_2008_T(missingImages,:) = [];

% D
missingImages = [];
for i=1:length(codesAll_08)
    disp(i);
    imageID = codesAll_08{i,1};
    imageFo = codesAll_08{i,8};
    
    imFileID = strcat('ImageCLEFmed2009_train.02/',num2str(imageID),'.png');
    if exist(imFileID, 'file') == 2
%         img = imread(imFileID);
%         destiFile = strcat(num2str(imageFo),'/',num2str(imageID),'.png');
%         imwrite(img,destiFile,'png');
    else
        missingImages = [missingImages; i];
    end
end
missingRemoved_2008_D = codesAll_08;
missingRemoved_2008_D(missingImages,:) = [];

% A
missingImages = [];
for i=1:length(codesAll_08)
    disp(i);
    imageID = codesAll_08{i,1};
    imageFo = codesAll_08{i,9};
    
    imFileID = strcat('ImageCLEFmed2009_train.02/',num2str(imageID),'.png');
    if exist(imFileID, 'file') == 2
%         img = imread(imFileID);
%         destiFile = strcat(num2str(imageFo),'/',num2str(imageID),'.png');
%         imwrite(img,destiFile,'png');
    else
        missingImages = [missingImages; i];
    end
end
missingRemoved_2008_A = codesAll_08;
missingRemoved_2008_A(missingImages,:) = [];

% B
missingImages = [];
for i=1:length(codesAll_08)
    disp(i);
    imageID = codesAll_08{i,1};
    imageFo = codesAll_08{i,10};
    
    imFileID = strcat('ImageCLEFmed2009_train.02/',num2str(imageID),'.png');
    if exist(imFileID, 'file') == 2
%         img = imread(imFileID);
%         destiFile = strcat(num2str(imageFo),'/',num2str(imageID),'.png');
%         imwrite(img,destiFile,'png');
    else
        missingImages = [missingImages; i];
    end
end
missingRemoved_2008_B = codesAll_08;
missingRemoved_2008_B(missingImages,:) = [];



%% test

missingImages = [];
for i=1:length(codesAll_05)
    disp(i);
    imageID = codesAll_05{i,1};
    imageFo = codesAll_05{i,2};
    
    imFileID = strcat('ImageCLEFmed2009_test.03/',num2str(imageID),'.png');
    if exist(imFileID, 'file') == 2
%         img = imread(imFileID);
%         destiFile = strcat(num2str(imageFo),'/',num2str(imageID),'.png');
%         imwrite(img,destiFile,'png');
    else
        missingImages = [missingImages; i];
    end
end
missingRemoved_2005 = codesAll_05;
missingRemoved_2005(missingImages,:) = [];

middle = (1:20);
middleString = cell(20,1);
for i=1:20
    middleString(i,1) = {num2str(i)};
end
middleString = sort(middleString);

%% 2006
missingImages = [];
for i=1:length(codesAll_06)
    disp(i);
    imageID = codesAll_06{i,1};
    imageFo = codesAll_06{i,2};
    
    imFileID = strcat('ImageCLEFmed2009_test.03/',num2str(imageID),'.png');
    if exist(imFileID, 'file') == 2
%         img = imread(imFileID);
%         destiFile = strcat(num2str(imageFo),'/',num2str(imageID),'.png');
%         imwrite(img,destiFile,'png');
    else
        missingImages = [missingImages; i];
    end
end
missingRemoved_2006 = codesAll_06;
missingRemoved_2006(missingImages,:) = [];

%% 2007
% T
missingImages = [];
for i=1:length(codesAll_07)
    disp(i);
    imageID = codesAll_07{i,1};
    imageFo = codesAll_07{i,7};
    
    imFileID = strcat('ImageCLEFmed2009_test.03/',num2str(imageID),'.png');
    if exist(imFileID, 'file') == 2
%         img = imread(imFileID);
%         destiFile = strcat(num2str(imageFo),'/',num2str(imageID),'.png');
%         imwrite(img,destiFile,'png');
    else
        missingImages = [missingImages; i];
    end
end
missingRemoved_2007_T = codesAll_07;
missingRemoved_2007_T(missingImages,:) = [];

% D
missingImages = [];
for i=1:length(codesAll_07)
    disp(i);
    imageID = codesAll_07{i,1};
    imageFo = codesAll_07{i,8};
    
    imFileID = strcat('ImageCLEFmed2009_test.03/',num2str(imageID),'.png');
    if exist(imFileID, 'file') == 2
%         img = imread(imFileID);
%         destiFile = strcat(num2str(imageFo),'/',num2str(imageID),'.png');
%         imwrite(img,destiFile,'png');
    else
        missingImages = [missingImages; i];
    end
end
missingRemoved_2007_D = codesAll_07;
missingRemoved_2007_D(missingImages,:) = [];

% A
missingImages = [];
for i=1:length(codesAll_07)
    disp(i);
    imageID = codesAll_07{i,1};
    imageFo = codesAll_07{i,9};
    
    imFileID = strcat('ImageCLEFmed2009_test.03/',num2str(imageID),'.png');
    if exist(imFileID, 'file') == 2
%         img = imread(imFileID);
%         destiFile = strcat(num2str(imageFo),'/',num2str(imageID),'.png');
%         imwrite(img,destiFile,'png');
    else
        missingImages = [missingImages; i];
    end
end
missingRemoved_2007_A = codesAll_07;
missingRemoved_2007_A(missingImages,:) = [];

% B
missingImages = [];
for i=1:length(codesAll_07)
    disp(i);
    imageID = codesAll_07{i,1};
    imageFo = codesAll_07{i,10};
    
    imFileID = strcat('ImageCLEFmed2009_test.03/',num2str(imageID),'.png');
    if exist(imFileID, 'file') == 2
%         img = imread(imFileID);
%         destiFile = strcat(num2str(imageFo),'/',num2str(imageID),'.png');
%         imwrite(img,destiFile,'png');
    else
        missingImages = [missingImages; i];
    end
end
missingRemoved_2007_B = codesAll_07;
missingRemoved_2007_B(missingImages,:) = [];

%% 2008

% T
missingImages = [];
for i=1:length(codesAll_08)
    disp(i);
    imageID = codesAll_08{i,1};
    imageFo = codesAll_08{i,7};
    
    imFileID = strcat('ImageCLEFmed2009_test.03/',num2str(imageID),'.png');
    if exist(imFileID, 'file') == 2
%         img = imread(imFileID);
%         destiFile = strcat(num2str(imageFo),'/',num2str(imageID),'.png');
%         imwrite(img,destiFile,'png');
    else
        missingImages = [missingImages; i];
    end
end
missingRemoved_2008_T = codesAll_08;
missingRemoved_2008_T(missingImages,:) = [];

% D
missingImages = [];
for i=1:length(codesAll_08)
    disp(i);
    imageID = codesAll_08{i,1};
    imageFo = codesAll_08{i,8};
    
    imFileID = strcat('ImageCLEFmed2009_test.03/',num2str(imageID),'.png');
    if exist(imFileID, 'file') == 2
%         img = imread(imFileID);
%         destiFile = strcat(num2str(imageFo),'/',num2str(imageID),'.png');
%         imwrite(img,destiFile,'png');
    else
        missingImages = [missingImages; i];
    end
end
missingRemoved_2008_D = codesAll_08;
missingRemoved_2008_D(missingImages,:) = [];

% A
missingImages = [];
for i=1:length(codesAll_08)
    disp(i);
    imageID = codesAll_08{i,1};
    imageFo = codesAll_08{i,9};
    
    imFileID = strcat('ImageCLEFmed2009_test.03/',num2str(imageID),'.png');
    if exist(imFileID, 'file') == 2
%         img = imread(imFileID);
%         destiFile = strcat(num2str(imageFo),'/',num2str(imageID),'.png');
%         imwrite(img,destiFile,'png');
    else
        missingImages = [missingImages; i];
    end
end
missingRemoved_2008_A = codesAll_08;
missingRemoved_2008_A(missingImages,:) = [];

% B
missingImages = [];
for i=1:length(codesAll_08)
    disp(i);
    imageID = codesAll_08{i,1};
    imageFo = codesAll_08{i,10};
    
    imFileID = strcat('ImageCLEFmed2009_test.03/',num2str(imageID),'.png');
    if exist(imFileID, 'file') == 2
%         img = imread(imFileID);
%         destiFile = strcat(num2str(imageFo),'/',num2str(imageID),'.png');
%         imwrite(img,destiFile,'png');
    else
        missingImages = [missingImages; i];
    end
end
missingRemoved_2008_B = codesAll_08;
missingRemoved_2008_B(missingImages,:) = [];
