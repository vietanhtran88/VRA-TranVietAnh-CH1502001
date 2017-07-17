function [features_Data] =  extract_Features_LBP(img_Data)
    img1D=img_Data(:,1);
    img2D=reshape(img1D,28,28);
    featuresVector=extractLBPFeatures(img2D,'NumNeighbors',4,'Radius',2,'CellSize',[14 14]);
    nsize=length(featuresVector);
    nData=size(img_Data,2);
    features_Data=zeros(nsize,nData);
    for i = 1:nData
        img1D=img_Data(:,i);
        img2D=reshape(img1D,28,28);
        features_Data(:,i)=extractLBPFeatures(img2D,'NumNeighbors',4,'Radius',2,'CellSize',[14 14]);
    end
end