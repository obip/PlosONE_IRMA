% Preprocesses train and test images
% Creates enhanced and resized version of the original images
% Author: Obioma Pelka

% compute BoK vocabulary fo all image input types
createBoKVocabulary;

% compute BoK Features for all images in the variout image input folders
makeBoK_CLAHE;
makeBoK_LAYERED_PADDING;
makeBoK_LAYERED;
makeBoK_PADDING;
makeBoK_NLMEANS;
makeBoK_ORIGINAL;

% load BOK features per image inpt type 
bundles = {'PADDING','LAYERED_PADDING','LAYERED','ORIGINAL','CLAHE','NLMEANS'};
% T
acc_2008_T = zeros(6,1);
pred_2008_T = cell(6,1);

filesSubsets = {};
for i=1:length(Unique_08_A1)
    filesSubsets{i} = Unique_08_A1{i};
end
for x=1:length(bundles)

    % Load Test SIFT Histograms
    filesSubset = filesSubsets';
    training_Names = {};
    training_Sift = [];
    training_Labels = [];
    bundle = strcat('Features/',bundles{1,x},'/Train/T');
    for index=1:1:length(filesSubset)
        fileName = fullfile(bundle,[char(filesSubset{index}) '_hist.mat']);
        category = load(fileName);
        names = category.names;
        for i=1:1:length(names)
            training_Names(end+1,:) = names(i,:);
        end
        training_Sift = [training_Sift, category.histograms];
        training_Labels = [training_Labels, index*ones(1,numel(category.names))];
    end
    
    % Load Test SIFT Histograms
    filesSubset = filesSubsets;
    test_Names = {};
    test_Sift = [];
    test_Labels = [];
    bundle = strcat('Features/',bundles{1,x},'/Test/T');
    for index=1:1:length(filesSubset)
        fileName = fullfile(bundle,[char(filesSubset{index}) '_hist.mat']);
        category = load(fileName);
        names = category.names;
        for i=1:1:length(names)
            test_Names(end+1,:) = names(i,:);
        end
        test_Sift = [test_Sift, category.histograms];
        test_Labels = [test_Labels, index*ones(1,numel(category.names))];
    end

    % classification
    training_SIFT = double(training_Sift)';
    training_SIFT = bsxfun(@times, training_SIFT, 1./sqrt(sum(training_SIFT.^2,1))) ;
    training_Labels = single(training_Labels)';
    test_SIFT = double(test_Sift)';
    test_SIFT = bsxfun(@times, test_SIFT, 1./sqrt(sum(test_SIFT.^2,1))) ;
    test_Labels = single(test_Labels)';

    sift_Histograms_Norm = [training_SIFT; test_SIFT ];
    w = 1./var(sift_Histograms_Norm);
    [wcoeff1,sift_score_08_T,latent1,tsquared1,explained1] = pca(sift_Histograms_Norm,...
    'VariableWeights',w);

    train = sift_score_08_T(1:length(training_Labels),1:100);
    test = sift_score_08_T(length(training_Labels)+1:length(sift_score_08_T),1:100);
    
    % training
    templS = templateTree('Surrogate','all','AlgorithmForCategorical','Exact','SplitCriterion', ...
             'deviance','MinParentSize',1);
    bag1 = fitensemble(train,training_Labels,'Bag',500,templS,...
          'Type','Classification','Replace','Off');
    
    % predict and evaluate
    cmpctBag = compact(bag1);
    [pred,normScore] = predict(cmpctBag,test);
    acc_2008_T(x,1) = sum(pred == test_Labels) ./ numel(test_Labels);
    pred_2008_T(x,1) = {pred};
end

% D
acc_2008_D = zeros(6,1);
pred_2008_D = cell(6,1);

filesSubsets = {};
for i=1:length(Unique_08_A2)
    filesSubsets{i} = Unique_08_A2{i};
end
for x=1:length(bundles)

    % Load Train SIFT Histograms
    filesSubset = filesSubsets';
    training_Names = {};
    training_Sift = [];
    training_Labels = [];
    bundle = strcat('Features/',bundles{1,x},'/Train/D');
    for index=1:1:length(filesSubset)
        fileName = fullfile(bundle,[char(filesSubset{index}) '_hist.mat']);
        category = load(fileName);
        names = category.names;
        for i=1:1:length(names)
            training_Names(end+1,:) = names(i,:);
        end
        training_Sift = [training_Sift, category.histograms];
        training_Labels = [training_Labels, index*ones(1,numel(category.names))];
    end
    
    % Load Test SIFT Histograms
    filesSubset = filesSubsets;
    test_Names = {};
    test_Sift = [];
    test_Labels = [];
    bundle = strcat('Features/',bundles{1,x},'/Test/D');
    for index=1:1:length(filesSubset)
        fileName = fullfile(bundle,[char(filesSubset{index}) '_hist.mat']);
        category = load(fileName);
        names = category.names;
        for i=1:1:length(names)
            test_Names(end+1,:) = names(i,:);
        end
        test_Sift = [test_Sift, category.histograms];
        test_Labels = [test_Labels, index*ones(1,numel(category.names))];
    end

    % classification
    training_SIFT = double(training_Sift)';
    training_SIFT = bsxfun(@times, training_SIFT, 1./sqrt(sum(training_SIFT.^2,1))) ;
    training_Labels = single(training_Labels)';
    test_SIFT = double(test_Sift)';
    test_SIFT = bsxfun(@times, test_SIFT, 1./sqrt(sum(test_SIFT.^2,1))) ;
    test_Labels = single(test_Labels)';

    sift_Histograms_Norm = [training_SIFT; test_SIFT ];
    w = 1./var(sift_Histograms_Norm);
    [wcoeff1,sift_score_08_D,latent1,tsquared1,explained1] = pca(sift_Histograms_Norm,...
    'VariableWeights',w);

    train = sift_score_08_D(1:length(training_Labels),1:100);
    test = sift_score_08_D(length(training_Labels)+1:length(sift_score_08_D),1:100);

    % training
    templS = templateTree('Surrogate','all','AlgorithmForCategorical','Exact','SplitCriterion', ...
             'deviance','MinParentSize',1);
    bag1 = fitensemble(train,training_Labels,'Bag',500,templS,...
          'Type','Classification','Replace','Off');
   
    % predict and evaluate
    cmpctBag = compact(bag1);
    [pred,normScore] = predict(cmpctBag,test);
    acc_2008_D(x,1) = sum(pred == test_Labels) ./ numel(test_Labels);
    pred_2008_D(x,1) = {pred};
end


% A
acc_2008_A = zeros(6,1);
pred_2008_A = cell(6,1);

filesSubsets = {};
for i=1:length(Unique_08_A3)
    filesSubsets{i} = Unique_08_A3{i};
end
for x=1:length(bundles)

    % Load Train SIFT Histograms
    filesSubset = filesSubsets';
    training_Names = {};
    training_Sift = [];
    training_Labels = [];
    bundle = strcat('Features/',bundles{1,x},'/Train/A');
    for index=1:1:length(filesSubset)
        fileName = fullfile(bundle,[char(filesSubset{index}) '_hist.mat']);
        category = load(fileName);
        names = category.names;
        for i=1:1:length(names)
            training_Names(end+1,:) = names(i,:);
        end
        training_Sift = [training_Sift, category.histograms];
        training_Labels = [training_Labels, index*ones(1,numel(category.names))];
    end
    
    % Load Test SIFT Histograms
    filesSubset = filesSubsets;
    test_Names = {};
    test_Sift = [];
    test_Labels = [];
    bundle = strcat('Features/',bundles{1,x},'/Test/A');
    for index=1:1:length(filesSubset)
        fileName = fullfile(bundle,[char(filesSubset{index}) '_hist.mat']);
        category = load(fileName);
        names = category.names;
        for i=1:1:length(names)
            test_Names(end+1,:) = names(i,:);
        end
        test_Sift = [test_Sift, category.histograms];
        test_Labels = [test_Labels, index*ones(1,numel(category.names))];
    end

    % classification
    training_SIFT = double(training_Sift)';
    training_SIFT = bsxfun(@times, training_SIFT, 1./sqrt(sum(training_SIFT.^2,1))) ;
    training_Labels = single(training_Labels)';
    test_SIFT = double(test_Sift)';
    test_SIFT = bsxfun(@times, test_SIFT, 1./sqrt(sum(test_SIFT.^2,1))) ;
    test_Labels = single(test_Labels)';

    sift_Histograms_Norm = [training_SIFT; test_SIFT ];
    w = 1./var(sift_Histograms_Norm);
    [wcoeff1,sift_score_08_A,latent1,tsquared1,explained1] = pca(sift_Histograms_Norm,...
    'VariableWeights',w);

    train = sift_score_08_A(1:length(training_Labels),1:100);
    test = sift_score_08_A(length(training_Labels)+1:length(sift_score_08_A),1:100);

    % training
    templS = templateTree('Surrogate','all','AlgorithmForCategorical','Exact','SplitCriterion', ...
             'deviance','MinParentSize',1);
    bag1 = fitensemble(train,training_Labels,'Bag',500,templS,...
          'Type','Classification','Replace','Off');
          
    % predict and evaluate
    cmpctBag = compact(bag1);
    [pred,normScore] = predict(cmpctBag,test);
    acc_2008_A(x,1) = sum(pred == test_Labels) ./ numel(test_Labels);
    pred_2008_A(x,1) = {pred};
end


% B
acc_2008_B = zeros(6,1);
pred_2008_B = cell(6,1);

filesSubsets = {};
for i=1:length(Unique_08_A4)
    filesSubsets{i} = Unique_08_A4{i};
end
for x=1:length(bundles)

    % Load Train SIFT Histograms
    filesSubset = filesSubsets';
    training_Names = {};
    training_Sift = [];
    training_Labels = [];
    bundle = strcat('Features/',bundles{1,x},'/Train/B');
    for index=1:1:length(filesSubset)
        fileName = fullfile(bundle,[char(filesSubset{index}) '_hist.mat']);
        category = load(fileName);
        names = category.names;
        for i=1:1:length(names)
            training_Names(end+1,:) = names(i,:);
        end
        training_Sift = [training_Sift, category.histograms];
        training_Labels = [training_Labels, index*ones(1,numel(category.names))];
    end
    
    % Load Test SIFT Histograms
    filesSubset = filesSubsets;
    test_Names = {};
    test_Sift = [];
    test_Labels = [];
    bundle = strcat('Features/',bundles{1,x},'/Test/B');
    for index=1:1:length(filesSubset)
        fileName = fullfile(bundle,[char(filesSubset{index}) '_hist.mat']);
        category = load(fileName);
        names = category.names;
        for i=1:1:length(names)
            test_Names(end+1,:) = names(i,:);
        end
        test_Sift = [test_Sift, category.histograms];
        test_Labels = [test_Labels, index*ones(1,numel(category.names))];
    end

    %% classification
    training_SIFT = double(training_Sift)';
    training_SIFT = bsxfun(@times, training_SIFT, 1./sqrt(sum(training_SIFT.^2,1))) ;
    training_Labels = single(training_Labels)';
    test_SIFT = double(test_Sift)';
    test_SIFT = bsxfun(@times, test_SIFT, 1./sqrt(sum(test_SIFT.^2,1))) ;
    test_Labels = single(test_Labels)';

    sift_Histograms_Norm = [training_SIFT; test_SIFT ];
    w = 1./var(sift_Histograms_Norm);
    [wcoeff1,sift_score_08_B,latent1,tsquared1,explained1] = pca(sift_Histograms_Norm,...
    'VariableWeights',w);

    train = sift_score_08_B(1:length(training_Labels),1:100);
    test = sift_score_08_B(length(training_Labels)+1:length(sift_score_08_B),1:100);
 
    % training
    templS = templateTree('Surrogate','all','AlgorithmForCategorical','Exact','SplitCriterion', ...
             'deviance','MinParentSize',1);
    bag1 = fitensemble(train,training_Labels,'Bag',500,templS,...
          'Type','Classification','Replace','Off');
   
    % predict and evaluate
    cmpctBag = compact(bag1);
    [pred,normScore] = predict(cmpctBag,test);
    acc_2008_B(x,1) = sum(pred == test_Labels) ./ numel(test_Labels);
    pred_2008_B(x,1) = {pred};
end


% Flat
acc_2008_Flat = zeros(6,1);
pred_2008_Flat = cell(6,1);

filesSubsets = {};
for i=1:length(Unique_08)
    filesSubsets{i} = Unique_08{i};
end
for x=1:length(bundles)

    % Load Test SIFT Histograms
    filesSubset = filesSubsets';
    training_Names = {};
    training_Sift = [];
    training_Labels = [];
    bundle = strcat('Features/',bundles{1,x},'/Train/Flat');
    for index=1:1:length(filesSubset)
        fileName = fullfile(bundle,[char(filesSubset{index}) '_hist.mat']);
        category = load(fileName);
        names = category.names;
        for i=1:1:length(names)
            training_Names(end+1,:) = names(i,:);
        end
        training_Sift = [training_Sift, category.histograms];
        training_Labels = [training_Labels, index*ones(1,numel(category.names))];
    end
    
    % Load Test SIFT Histograms
    filesSubset = filesSubsets;
    test_Names = {};
    test_Sift = [];
    test_Labels = [];
    bundle = strcat('Features/',bundles{1,x},'/Test/Flat');
    for index=1:1:length(filesSubset)
        fileName = fullfile(bundle,[char(filesSubset{index}) '_hist.mat']);
        category = load(fileName);
        names = category.names;
        for i=1:1:length(names)
            test_Names(end+1,:) = names(i,:);
        end
        test_Sift = [test_Sift, category.histograms];
        test_Labels = [test_Labels, index*ones(1,numel(category.names))];
    end

    % classification
    training_SIFT = double(training_Sift)';
    training_SIFT = bsxfun(@times, training_SIFT, 1./sqrt(sum(training_SIFT.^2,1))) ;
    training_Labels = single(training_Labels)';
    test_SIFT = double(test_Sift)';
    test_SIFT = bsxfun(@times, test_SIFT, 1./sqrt(sum(test_SIFT.^2,1))) ;
    test_Labels = single(test_Labels)';

    sift_Histograms_Norm = [training_SIFT; test_SIFT ];
    w = 1./var(sift_Histograms_Norm);
    [wcoeff1,sift_score_08_Flat,latent1,tsquared1,explained1] = pca(sift_Histograms_Norm,...
    'VariableWeights',w);

    train = sift_score_08_Flat(1:length(training_Labels),1:100);
    test = sift_score_08_Flat(length(training_Labels)+1:length(sift_score_08_Flat),1:100);

    % training
    templS = templateTree('Surrogate','all','AlgorithmForCategorical','Exact','SplitCriterion', ...
             'deviance','MinParentSize',1);
    bag1 = fitensemble(train,training_Labels,'Bag',500,templS,...
          'Type','Classification','Replace','Off');
   
    % predict and evaluate
    cmpctBag = compact(bag1);
    [pred,normScore] = predict(cmpctBag,test);
    acc_2008_Flat(x,1) = sum(pred == test_Labels) ./ numel(test_Labels);
    pred_2008_Flat(x,1) = {pred};
end







