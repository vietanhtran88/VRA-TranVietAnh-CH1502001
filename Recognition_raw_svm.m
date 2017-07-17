function Recognition_raw_svm(imgTrainImagesAll,lblTrainLabelsAll,imgTestImagesAll,lblTestLabelsAll)
%     Training
    strFileName = ['MDL\Mdl_raw_svm.mat'];
    Mdl_raw_svm = fitcecoc(imgTrainImagesAll',lblTrainLabelsAll,'Prior','uniform');
    save(strFileName,'Mdl_raw_svm');
    
%     Predict   
    lblresult = predict(Mdl_raw_svm,imgTestImagesAll');
    nResult=(lblresult==lblTestLabelsAll);
    save('Results\nResult_RAW_SVM.mat','nResult');
end