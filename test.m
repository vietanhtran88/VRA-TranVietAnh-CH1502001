function test() 
    [imgTrainImagesAll,lblTrainLabelsAll]=load_data('Data\train-images.idx3-ubyte','Data\train-labels.idx1-ubyte');
    [imgTestImagesAll,lblTestLabelsAll]=load_data('Data\t10k-images.idx3-ubyte','Data\t10k-labels.idx1-ubyte');
    fprintf('Processing raw svm');
    Recognition_raw_svm(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll);
    fprintf('Processing raw knn');
    Recognition_raw_knn(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll);
    fprintf('Processing lbp knn');
    Recognition_LBP_KNN(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll);
    fprintf('Processing lbp svm');
    Recognition_LBP_svm(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll);
    fprintf('Processing hog knn');
    Recognition_HOG_KNN(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll);
    fprintf('Processing hog svm');
    Recognition_HOG_svm(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll);
    fprintf('Processing BoW');
    Recognition_BoW_svm();
    fprintf('Training is complete');
end