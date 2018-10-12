function histograms = computeHistogramsSIFT(vocabulary, names,folder,layer)
%
%   computeHistogramsSIFT(vocabulary, names,folder)
%   create sift histogram of images in the 'folder' directory

% Author: Obioma Pelka

start = tic ;
histograms = cell(1,numel(names)) ;
parfor i = 1:length(names)
  if exist(names{i}, 'file')
    fullPath = names{i} ;
  else
    fullPath = fullfile(strcat('/home/pelka/Documents/datairma/special/',folder,'/allImages'),strcat(num2str(names{i}),'.jpg'));
  end
  fprintf('Extracting histogram from %s (time remaining %.2fs)\n', fullPath, ...
          (length(names)-i) * toc(start)/i) ;
  histograms{i} = computeSingleHistogram(vocabulary, fullPath,layer) ;
end
histograms = [histograms{:}] ;

