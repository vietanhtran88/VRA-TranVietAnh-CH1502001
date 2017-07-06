function Recognition_LBP_KNN()
%     Training
    strFileName = ['MDL\Mdl_LBP_KNN.mat'];
    [imgTrainImagesAll,lblTrainLabelsAll]=load_data('Data\train-images.idx3-ubyte','Data\train-labels.idx1-ubyte');
    features_data_train=extract_Features_LBP(imgTrainImagesAll);
    Mdl_LBP_KNN=fitcknn(features_data_train',lblTrainLabelsAll,'NumNeighbors',8);
    save(strFileName,'Mdl_LBP_KNN');
    
%     Predict
    [imgTestImagesAll,lblTestLabelsAll]=load_data('Data\t10k-images.idx3-ubyte','Data\t10k-labels.idx1-ubyte');
    features_data_test=extract_Features_LBP(imgTestImagesAll);
    lblresult=predict(Mdl_LBP_KNN,features_data_test');    
    nResult=(lblresult==lblTestLabelsAll);
    save('Results\nResult_LBP_KNN.mat','nResult');
    
end