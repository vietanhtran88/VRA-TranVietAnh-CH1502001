function Recognition_BoW_svm()
    rootFolder = fullfile('Data\DataTrain');
    imgSets = [ imageSet(fullfile(rootFolder, '0')), ...
                imageSet(fullfile(rootFolder, '1')), ...
                imageSet(fullfile(rootFolder, '2')), ...
                imageSet(fullfile(rootFolder, '3')), ...
                imageSet(fullfile(rootFolder, '4')), ...
                imageSet(fullfile(rootFolder, '5')), ...
                imageSet(fullfile(rootFolder, '6')), ...
                imageSet(fullfile(rootFolder, '7')), ...
                imageSet(fullfile(rootFolder, '8')), ...
                imageSet(fullfile(rootFolder, '9'))];
    minSetCount = min([imgSets.Count]); 
    imgSets = partition(imgSets, minSetCount, 'randomize');
    extractorFcn = @exampleBagOfFeaturesExtractor;
    bag = bagOfFeatures(imgSets, 'VocabularySize',1000,'Verbose',false);
    save('MDL\bag_of_Features.mat','bag');
    categoryClassifier = trainImageCategoryClassifier(imgSets, bag,'Verbose',false);
    save('MDL\categoryClassifier_BOW.mat','categoryClassifier');
   
    rootFolder = fullfile('Data\DataTrain');
    imgSets = [ imageSet(fullfile(rootFolder, '0')), ...
                imageSet(fullfile(rootFolder, '1')), ...
                imageSet(fullfile(rootFolder, '2')), ...
                imageSet(fullfile(rootFolder, '3')), ...
                imageSet(fullfile(rootFolder, '4')), ...
                imageSet(fullfile(rootFolder, '5')), ...
                imageSet(fullfile(rootFolder, '6')), ...
                imageSet(fullfile(rootFolder, '7')), ...
                imageSet(fullfile(rootFolder, '8')), ...
                imageSet(fullfile(rootFolder, '9'))];
    confMatrix = evaluate(categoryClassifier, imgSets,'Verbose',false);
    save('Results\confMatrix_BOW.mat','confMatrix');
end