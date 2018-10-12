function newImage = getImageNlmeans(im)
% Rescales an Image to have a height of 480 pixels.
% Author: Obioma Pelka
    Options.kernelratio=4;
    Options.windowratio=4;
    Options.filterstrength=0.1;
    
    newImage = NLMF(im,Options);
end