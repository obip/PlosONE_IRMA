function vocabulary = buildSIFTVocabulary(names,folder)
% Builds a visual word vocabulary using SIFT descriptors
%   NAMES is a mat file containing file names of the images
%   VOCABULARY is a structure with fields:
%
%   WORDS:: 128 x K matrix of visual word centers.
%
%   KDTREE:: KD-tree indexing the visual word for fast quantization.

numWords = 1000 ;
numFeatures = numWords * 100 ;

% This extracts a number of visual descriptors from the specified
% images. Only NUMFEATURES overall descriptors are retrieved as more
% do not really improve the estimation of the visual dictionary but
% slow down computation.

descriptors = cell(1,numel(names));
parfor i = 1:numel(names)
  fullPath = fullfile(strcat('/home/pelka/Documents/datairma/special/',folder,'/allImages'),strcat(num2str(names{i}),'.jpg'));
  fprintf('Extracting features from %s\n', fullPath) ;
  fprintf('Index number %d\n', i) ;
  if exist(fullPath, 'file')
    im = imread(fullPath) ;
  end
  [drop, d] = computeSIFTFeatures(im) ;
  descriptors{i} = vl_colsubset(d, round(numFeatures / numel(names)), 'uniform') ;
end
fprintf('Finished vocabulary') ;

% This clusters the descriptors into NUMWORDS visual words by using
% KMEANS. It then compute a KDTREE to index them. The use of a KDTREE
% is optional, but speeds-up quantization significantly.

fprintf('Start Computing visual words and kdtree\n') ;
descriptors = single([descriptors{:}]) ;
vocabulary.words = vl_kmeans(descriptors, numWords, 'verbose', 'algorithm', 'ann', 'MaxNumIterations',20,'NumTrees',20,'Initialization','RANDSEL');
vocabulary.kdtree = vl_kdtreebuild(vocabulary.words,'NumTrees', 1) ;
fprintf(' End Computing visual words and kdtree\n') ;
