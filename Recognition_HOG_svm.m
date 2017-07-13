function Recognition_HOG_svm(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll)
%     Training
    strFileName = ['MDL\Mdl_HOG_SVM.mat'];
    features_data_train=extract_HOG_Features(imgTrainImagesAll);
    Mdl_HOG_svm=fitcecoc(features_data_train',lblTrainLabelsAll);
    save(strFileName,'Mdl_HOG_svm');
    
%   Predict
    features_data_test=extract_HOG_Features(imgTestImagesAll);
    lblresult=predict(Mdl_HOG_svm,features_data_test');
    nResult=(lblresult==lblTestLabelsAll);
    save('Results\nResult_HOG_SVM.mat','nResult');

end