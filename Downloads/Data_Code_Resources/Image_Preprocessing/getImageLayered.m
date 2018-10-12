function newImage = getImageLayered(im)
% Layers a grayscale image with original image, nlmeans and clahe representing RGB color channels
% Author: Obioma Pelka

    nlMeans = getImageNlmeans(im);
    clahe = getImageClahe(im);
    newImage = cat(3,im,nlMeans,clahe);
end