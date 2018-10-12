function [keypoints,descriptors] = computeSIFTFeatures(im,layer)
% Compute keypoints and descriptors for an image using the SIFT Transform
% KEYPOINTS is a 4 x K
%   matrix with one column for keypoint, specifying the X,Y location,
%   the SCALE, and the CONTRAST of the keypoint.
% DESCRIPTORS is a 128 x K matrix of SIFT descriptors of the keypoints.
% Layer = 1 for grayscale and Layer=3 for RGB

% Author: Obioma Pelka

im = resizeImage(im) ;
if layer == 1
    [keypoints, descriptors] = vl_phow(im, 'step', 4, 'floatdescriptors', true, 'Verbose', true, 'Fast', true) ;
else
    [keypoints, descriptors] = vl_phow(im, 'step', 4, 'floatdescriptors', true, 'color', 'rgb', 'Verbose', true, 'Fast', true) ;
end
