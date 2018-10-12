function [ histogram ] = getBasicFeatures( img )
    % Author: Obioma Pelka
    % get visual statistical properties of an image
    %% Brigthness
    b = mean2(img);

    %% GrayCoProps
    if size(img,3) == 3
        p = rgb2gray(img);
    else
        p = img;
    end
    glcm = graycomatrix(p, 'offset', [0 1], 'Symmetric', true);

    % energy
    e = graycoprops(glcm,'Energy');

    % homogenity
    h = graycoprops(glcm,'Homogeneity');

    % correlation
    cor = graycoprops(glcm,'Correlation');

    % contrast
    con = graycoprops(glcm,'Contrast');

    %% Entropy
    en = entropy(img);


    %% Aspect Ratio
    [height, width, ~] = size(img);
    a = width/height;

    %% Concat features
    histogram = [b en h.Homogeneity cor.Correlation con.Contrast e.Energy a]';
  
end

