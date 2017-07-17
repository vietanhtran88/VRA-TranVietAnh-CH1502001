function test() 
    [imgTrainImagesAll,lblTrainLabelsAll]=load_data('Data\train-images.idx3-ubyte','Data\train-labels.idx1-ubyte');
    [imgTestImagesAll,lblTestLabelsAll]=load_data('Data\t10k-images.idx3-ubyte','Data\t10k-labels.idx1-ubyte');
%     fprintf('Processing raw knn\n');
%     Recognition_raw_knn(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll);
%     fprintf('Processing raw svm\n');
%     Recognition_raw_svm(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll);
    
%     fprintf('Processing lbp knn\n');
%     Recognition_LBP_KNN(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll);
%     fprintf('Processing lbp svm\n');
%     Recognition_LBP_svm(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll);
    fprintf('Processing hog knn\n');
    Recognition_HOG_KNN(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll);
    fprintf('Processing hog svm\n');
    Recognition_HOG_svm(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll);
%     fprintf('Processing BoW\n');
%     Recognition_BoW_svm();
    fprintf('Training is complete\n');
end