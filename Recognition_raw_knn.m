function Recognition_raw_knn(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll)
%     Training
    strFileName = ['MDL\Mdl_raw_knn.mat'];
    Mdl_raw_knn = fitcknn(imgTrainImagesAll',lblTrainLabelsAll,'Distance','minkowski','NSMethod','kdtree','NumNeighbors',3);
    save(strFileName,'Mdl_raw_knn');

%     Predict 
    lblresult = predict(Mdl_raw_knn,imgTestImagesAll');
    nResult=(lblresult==lblTestLabelsAll);
    save('Results\nResult_RAW_KNN.mat','nResult');
end