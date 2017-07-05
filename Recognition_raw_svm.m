function Accurate_rate=Recognition_raw_svm()
    %load data train
%     [imgTrainImagesAll,lblTrainLabelsAll]=load_data('Data\train-images.idx3-ubyte','Data\train-labels.idx1-ubyte');
    strFileName = ['MDL\Mdl_raw_svm.mat'];
%     Mdl_raw_svm = fitcecoc(imgTrainImagesAll',lblTrainLabelsAll);
%     save(strFileName,'Mdl_raw_svm');
     load(strFileName);
    %load data test
    
%     [imgTestImagesAll,lblTestLabelsAll]=load_data('Data\t10k-images.idx3-ubyte','Data\t10k-labels.idx1-ubyte');
    
%     lblresult = predict(Mdl_raw_svm,imgTestImagesAll');
%     nResult=(lblresult==lblTestLabelsAll);
%     save('Results\nResult_RAW_SVM.mat','nResult');
    load('Results\nResult_RAW_SVM.mat');
    count=sum(nResult);
    Accurate_rate=count/100;
%     fprintf('So luong mau dung: %d\n',count);
end