function a_detaicuoikhoa()   
    tic
    u_input = input('Do you want to TRAIN and PREDICT again: Y/N ', 's');
    if upper(u_input)=='Y'
        test();
    end 
    load('Results\nResult_RAW_KNN.mat');
    RAW_KNN=sum(nResult)/100;
    load('Results\nResult_RAW_SVM.mat');
    RAW_SVM=sum(nResult)/100;
    load('Results\nResult_LBP_KNN.mat');
    LBP_KNN=sum(nResult)/100;
    load('Results\nResult_LBP_SVM.mat');
    LBP_SVM=sum(nResult)/100;
    load('Results\nResult_HOG_KNN.mat');
    HOG_KNN=sum(nResult)/100;
    load('Results\nResult_HOG_SVM.mat');
    HOG_SVM=sum(nResult)/100;
    load('Results\confMatrix_BOW.mat');
    BOW=mean(diag(confMatrix))*100;
    toc
    y=([RAW_KNN RAW_SVM LBP_KNN LBP_SVM HOG_KNN HOG_SVM BOW]);    
    h=bar(y,'FaceColor',[0 .5 .5]);
    yb = cat(1, h.YData);
    xb = bsxfun(@plus, h(1).XData, [h.XOffset]');
    hold on;
    htxt = text(xb(:),yb(:), cellstr(num2str(yb(:))),'HorizontalAlignment','center','VerticalAlignment','bottom');
    set(gca,'XTickLabel', {'Raw KNN', 'Raw SVM', 'LBP KNN', 'LBP SVM','HOG KNN', 'HOG SVM', 'BOW'});
    set(gcf, 'Units', 'normalized', 'Position', [0.5, -0.15, 1, 1]); 
    title('The chart shows the accuracy rate of the prediction','FontSize', 14);
    ylabel('accuracy rate(%)','FontSize', 14) ;
end