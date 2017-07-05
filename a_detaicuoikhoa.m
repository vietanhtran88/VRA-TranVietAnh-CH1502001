function a_detaicuoikhoa()
    y=([Recognition_raw_knn() Recognition_raw_svm() Recognition_HOG_KNN() Recognition_HOG_svm() Recognition_LBP_KNN() Recognition_LBP_svm() Recognition_BoW_svm()]);    
    h=bar(y,'FaceColor',[0 .5 .5]);
    yb = cat(1, h.YData);
    xb = bsxfun(@plus, h(1).XData, [h.XOffset]');
    hold on;
    htxt = text(xb(:),yb(:), cellstr(num2str(yb(:))),'HorizontalAlignment','center','VerticalAlignment','bottom');
    set(gca,'XTickLabel', {'Raw KNN', 'Raw SVM', 'Hog KNN', 'Hog SVM', 'LBP KNN', 'LBP SVM', 'BoW'});

end