function test() 
    [imgTrainImagesAll,lblTrainLabelsAll]=load_data('Data\train-images.idx3-ubyte','Data\train-labels.idx1-ubyte');
    [imgTestImagesAll,lblTestLabelsAll]=load_data('Data\t10k-images.idx3-ubyte','Data\t10k-labels.idx1-ubyte');
    fprintf('Processing');
    Recognition_raw_svm(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll);
    Recognition_raw_knn(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll);
    Recognition_LBP_KNN(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll);
    Recognition_LBP_svm(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll);
    Recognition_HOG_KNN(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll);
    Recognition_HOG_svm(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll);
    Recognition_BoW_svm();
    fprintf('Training is complete');
end