function histogram = computeSingleHistogram(vocabulary,im,layer)
% COMPUTEHISTOGRAMFROMIMAGE Compute histogram of visual words for an image
%   HISTOGRAM = COMPUTEHISTOGRAMFROMIMAGE(VOCABULARY,IM) compute the
%   histogram of visual words for image IM given the visual word
%   vocaublary VOCABULARY. To do so the function calls in sequence
%   COMPUTEFEATURES(), QUANTIZEFEATURES(), and COMPUTEHISTOGRAM().
%  

% Author: Obioma Pelka

if isstr(im)
  if exist(im, 'file')
    fullPath = im;
  end
  im = imread(im);
end

width = size(im,2);
height= size(im,1);
[keypoints, descriptors] = computeSIFTFeatures(im,layer);
words = quantizeSIFTDescriptors(vocabulary, descriptors);
histogram = computeSIFTHistogram(width, height, keypoints, words);


