function newImage = getImageClahe(im)
% Return the clahe enhaced output image
% Author: Obioma Pelka
    newImage = adapthisteq(im);
end