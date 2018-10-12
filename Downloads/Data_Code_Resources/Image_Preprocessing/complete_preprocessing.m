% Preprocesses train and test images
% Creates enhanced and resized version of the original images
% Author: Obioma Pelka

%%  TRAIN SET
for i=1:length(missingRemoved_2008_train)
    disp(strcat('Preprocessing Train: ',num2str(i)));
    imId = num2str(missingRemoved_2008_train{i,1});
    sourceFile = strcat('ImageCLEFmed2009_train.02/',imId,'.png');
    
    % original
    image_original = im2double(imread(sourceFile));
    if(size(image_original,3)==3)
        image_original=rgb2gray(image_original);
    end
    destiFile = strcat('/home/pelka/Documents/datairma/special/original/train/',imId,'.jpg');
    imwrite(image_original,destiFile,'jpg');
    destiFile = strcat('/home/pelka/Documents/datairma/special/original/allImages/',imId,'.jpg');
    imwrite(image_original,destiFile,'jpg');
    
     % layered
    image_layered = getImageLayered(image_original);
    destiFile = strcat('/home/pelka/Documents/datairma/special/enhanced/train/',imId,'.jpg');
    imwrite(image_layered,destiFile,'jpg');
    destiFile = strcat('/home/pelka/Documents/datairma/special/enhanced/allImages/',imId,'.jpg');
    imwrite(image_layered,destiFile,'jpg');
    
     % padding
    image_padding = getImagePadding(image_original);
    destiFile = strcat('/home/pelka/Documents/datairma/special/blownUp/train/',imId,'.jpg');
    imwrite(image_padding,destiFile,'jpg');
    destiFile = strcat('/home/pelka/Documents/datairma/special/blownUp/allImages/',imId,'.jpg');
    imwrite(image_padding,destiFile,'jpg');

     % layered and padding
    image_layered_padding = getImagePadding(image_layered);
    destiFile = strcat('/home/pelka/Documents/datairma/special/blownUpEnhanced/train/',imId,'.jpg');
    imwrite(image_layered_padding,destiFile,'jpg');
    destiFile = strcat('/home/pelka/Documents/datairma/special/blownUpEnhanced/allImages/',imId,'.jpg');
    imwrite(image_layered_padding,destiFile,'jpg');
    
     % nlmeans
    image_nlmeans = getImageNlmeans(image_original);
    destiFile = strcat('/home/pelka/Documents/datairma/special/nlmeans/train/',imId,'.jpg');
    imwrite(image_nlmeans,destiFile,'jpg');
    destiFile = strcat('/home/pelka/Documents/datairma/special/nlmeans/allImages/',imId,'.jpg');
    imwrite(image_nlmeans,destiFile,'jpg');
    
     % clahe
    image_clahe = getImageClahe(image_original);
    destiFile = strcat('/home/pelka/Documents/datairma/special/clahe/train/',imId,'.jpg');
    imwrite(image_clahe,destiFile,'jpg');
    destiFile = strcat('/home/pelka/Documents/datairma/special/clahe/allImages/',imId,'.jpg');
    imwrite(image_clahe,destiFile,'jpg');
    
end


%% TEST SET
for i=1:length(missingRemoved_2008_test)
    disp(strcat('Preprocessing Test: ',num2str(i)));
    imId = num2str(missingRemoved_2008_test{i,1});
    sourceFile = strcat('ImageCLEFmed2009_test.03/',imId,'.png');
    
    % original
    image_original = im2double(imread(sourceFile));
    if(size(image_original,3)==3)
        image_original=rgb2gray(image_original);
    end
    destiFile = strcat('/home/pelka/Documents/datairma/special/original/test/',imId,'.jpg');
    imwrite(image_original,destiFile,'jpg');
    destiFile = strcat('/home/pelka/Documents/datairma/special/original/allImages/',imId,'.jpg');
    imwrite(image_original,destiFile,'jpg');
    
     % layered
    image_layered = getImageLayered(image_original);
    destiFile = strcat('/home/pelka/Documents/datairma/special/enhanced/test/',imId,'.jpg');
    imwrite(image_layered,destiFile,'jpg');
    destiFile = strcat('/home/pelka/Documents/datairma/special/enhanced/allImages/',imId,'.jpg');
    imwrite(image_layered,destiFile,'jpg');
    
     % padding
    image_padding = getImagePadding(image_original);
    destiFile = strcat('/home/pelka/Documents/datairma/special/blownUp/test/',imId,'.jpg');
    imwrite(image_padding,destiFile,'jpg');
    destiFile = strcat('/home/pelka/Documents/datairma/special/blownUp/allImages/',imId,'.jpg');
    imwrite(image_padding,destiFile,'jpg');

     % layered and padding
    image_layered_padding = getImagePadding(image_layered);
    destiFile = strcat('/home/pelka/Documents/datairma/special/blownUpEnhanced/test/',imId,'.jpg');
    imwrite(image_layered_padding,destiFile,'jpg');
    destiFile = strcat('/home/pelka/Documents/datairma/special/blownUpEnhanced/allImages/',imId,'.jpg');
    imwrite(image_layered_padding,destiFile,'jpg');
    
     % nlmeans
    image_nlmeans = getImageNlmeans(image_original);
    destiFile = strcat('/home/pelka/Documents/datairma/special/nlmeans/test/',imId,'.jpg');
    imwrite(image_nlmeans,destiFile,'jpg');
    destiFile = strcat('/home/pelka/Documents/datairma/special/nlmeans/allImages/',imId,'.jpg');
    imwrite(image_nlmeans,destiFile,'jpg');
    
     % clahe
    image_clahe = getImageClahe(image_original);
    destiFile = strcat('/home/pelka/Documents/datairma/special/clahe/test/',imId,'.jpg');
    imwrite(image_clahe,destiFile,'jpg');
    destiFile = strcat('/home/pelka/Documents/datairma/special/clahe/allImages/',imId,'.jpg');
    imwrite(image_clahe,destiFile,'jpg');
    
end


