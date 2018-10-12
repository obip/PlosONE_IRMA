% Creates SIFT vocabulary for all image inout types 
% Author: Obioma Pelka

allNames = [missingRemoved_2008_train(:,1);missingRemoved_2008_test(:,1)];

% Check if vocabulary exists, if not ==> create vocabulary and save in folder
% ORIGINAL
if ~exist('Features/vocabularyORIGINAL.mat', 'file')
  vocabularyORIGINAL = buildSIFTVocabulary(allNames,'original');
  save('Features/vocabularyORIGINA.mat', '-STRUCT', 'vocabulary') ;
else
  vocabulary = load('Features/vocabularyORIGINAL.mat') ;
end

% Check if vocabulary exists, if not ==> create vocabulary and save in folder
% ORIGINAL
if ~exist('Features/vocabularyCLAHE.mat', 'file')
  vocabularyCLAHE = buildSIFTVocabulary(allNames,'clahe');
  save('Features/vocabularyCLAHE.mat', '-STRUCT', 'vocabulary') ;
else
  vocabulary = load('Features/vocabularyCLAHE.mat') ;
end

% Check if vocabulary exists, if not ==> create vocabulary and save in folder
% ORIGINAL
if ~exist('Features/vocabularyPADDING.mat', 'file')
  vocabularyPADDING = buildSIFTVocabulary(allNames,'blownUp');
  save('Features/vocabularyPADDING.mat', '-STRUCT', 'vocabulary') ;
else
  vocabulary = load('Features/vocabularyPADDING.mat') ;
end

% Check if vocabulary exists, if not ==> create vocabulary and save in folder
% ORIGINAL
if ~exist('Features/vocabularyLAYERED_PADDING.mat', 'file')
  vocabularyLAYERED_PADDING = buildSIFTVocabulary(allNames,'blownUpEnhanced');
  save('Features/vocabularyLAYERED_PADDING.mat', '-STRUCT', 'vocabulary') ;
else
  vocabulary = load('Features/vocabularyLAYERED_PADDING.mat') ;
end

% Check if vocabulary exists, if not ==> create vocabulary and save in folder
% ORIGINAL
if ~exist('Features/vocabularyLAYERED.mat', 'file')
  vocabularyLAYERED = buildSIFTVocabulary(allNames,'enhanced');
  save('Features/vocabularyLAYERED.mat', '-STRUCT', 'vocabulary') ;
else
  vocabulary = load('Features/vocabularyLAYERED.mat') ;
end

% Check if vocabulary exists, if not ==> create vocabulary and save in folder
% NLMEANS
if ~exist('Features/vocabularyNLMEANS.mat', 'file')
  vocabularyNLMEANS = buildSIFTVocabulary(allNames,'nlmeans');
  save('Features/vocabularyNLMEANS.mat', '-STRUCT', 'vocabulary') ;
else
  vocabulary = load('Features/vocabularyNLMEANS.mat') ;
end







