function Recognition_LBP_svm() 
%   Training
    strFileName = ['MDL\Mdl_LBP_SVM.mat'];
    [imgTrainImagesAll,lblTrainLabelsAll]=load_data('Data\train-images.idx3-ubyte','Data\train-labels.idx1-ubyte');   
    features_data_train=extract_Features_LBP(imgTrainImagesAll);
    Mdl_LBP_SVM=fitcecoc(features_data_train',lblTrainLabelsAll);
    save(strFileName,'Mdl_LBP_SVM');

%     Predict
    [imgTestImagesAll,lblTestLabelsAll]=load_data('Data\t10k-images.idx3-ubyte','Data\t10k-labels.idx1-ubyte');
    features_data_test=extract_Features_LBP(imgTestImagesAll);    
    lblresult=predict(Mdl_LBP_SVM,features_data_test');
    nResult=(lblresult==lblTestLabelsAll);
    save('Results\nResult_LBP_SVM.mat','nResult');
end