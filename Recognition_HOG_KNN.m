function Recognition_HOG_KNN(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll)  
%     Training
    strFileName = ['MDL\Mdl_HOG_KNN.mat'];
    features_data_train=extract_HOG_Features(imgTrainImagesAll);
    Mdl_HOG_KNN=fitcknn(features_data_train',lblTrainLabelsAll,'Distance','cityblock','NumNeighbors',3);
    save(strFileName,'Mdl_HOG_KNN');

%     Predict 
    features_data_test=extract_HOG_Features(imgTestImagesAll);
    lblresult=predict(Mdl_HOG_KNN,features_data_test');
    nResult=(lblresult==lblTestLabelsAll);
    save('Results\nResult_HOG_KNN.mat','nResult');
end