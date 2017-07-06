function Recognition_HOG_svm()
%     Training
    strFileName = ['MDL\Mdl_HOG_SVM.mat'];
    [imgTrainImagesAll,lblTrainLabelsAll]=load_data('Data\train-images.idx3-ubyte','Data\train-labels.idx1-ubyte');
    features_data_train=extract_HOG_Features(imgTrainImagesAll);
    Mdl_HOG_svm=fitcecoc(features_data_train',lblTrainLabelsAll);
    save(strFileName,'Mdl_HOG_svm');
    
%   Predict
    [imgTestImagesAll,lblTestLabelsAll]=load_data('Data\t10k-images.idx3-ubyte','Data\t10k-labels.idx1-ubyte');    
    features_data_test=extract_HOG_Features(imgTestImagesAll);
    lblresult=predict(Mdl_HOG_svm,features_data_test');
    nResult=(lblresult==lblTestLabelsAll);
    save('Results\nResult_HOG_SVM.mat','nResult');

end