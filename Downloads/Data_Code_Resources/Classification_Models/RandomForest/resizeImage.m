function im = resizeImage(im)
% Rescales an Image to have a height of 480 pixels.
% Author: Obioma Pelka

im = im2single(im);
if size(im,1) > 480
    im = imresize(im, [480 NaN]);
end

