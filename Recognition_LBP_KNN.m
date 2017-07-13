function Recognition_LBP_KNN(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll)
%     Training
    strFileName = ['MDL\Mdl_LBP_KNN.mat'];
    features_data_train=extract_Features_LBP(imgTrainImagesAll);
    Mdl_LBP_KNN=fitcknn(features_data_train',lblTrainLabelsAll,'NumNeighbors',8);
    save(strFileName,'Mdl_LBP_KNN');
    
%     Predict
    features_data_test=extract_Features_LBP(imgTestImagesAll);
    lblresult=predict(Mdl_LBP_KNN,features_data_test');    
    nResult=(lblresult==lblTestLabelsAll);
    save('Results\nResult_LBP_KNN.mat','nResult');
    
end