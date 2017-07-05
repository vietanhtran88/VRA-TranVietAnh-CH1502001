function Accurate_rate = Recognition_LBP_svm()
    strFileName = ['MDL\Mdl_LBP_SVM.mat'];
%load data train
%     [imgTrainImagesAll,lblTrainLabelsAll]=load_data('Data\train-images.idx3-ubyte','Data\train-labels.idx1-ubyte'); 
%     
%     features_data_train=extract_Features_LBP(imgTrainImagesAll);
%     
%     Mdl_LBP_SVM=fitcecoc(features_data_train',lblTrainLabelsAll);
%     save(strFileName,'Mdl_LBP_SVM');
    load(strFileName);

    %load data test
%     [imgTestImagesAll,lblTestLabelsAll]=load_data('Data\t10k-images.idx3-ubyte','Data\t10k-labels.idx1-ubyte');
%     features_data_test=extract_Features_LBP(imgTestImagesAll);    
%     lblresult=predict(Mdl_LBP_SVM,features_data_test');
%     nResult=(lblresult==lblTestLabelsAll);
%     save('Results\nResult_LBP_SVM.mat','nResult');
    load('Results\nResult_LBP_SVM.mat');
    nCount=sum(nResult);
    Accurate_rate=nCount/100;
end