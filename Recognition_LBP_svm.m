function Recognition_LBP_svm(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll) 
%   Training
    strFileName = ['MDL\Mdl_LBP_SVM.mat'];  
    features_data_train=extract_Features_LBP(imgTrainImagesAll);
    Mdl_LBP_SVM=fitcecoc(features_data_train',lblTrainLabelsAll);
    save(strFileName,'Mdl_LBP_SVM');

%     Predict
    features_data_test=extract_Features_LBP(imgTestImagesAll);    
    lblresult=predict(Mdl_LBP_SVM,features_data_test');
    nResult=(lblresult==lblTestLabelsAll);
    save('Results\nResult_LBP_SVM.mat','nResult');
end