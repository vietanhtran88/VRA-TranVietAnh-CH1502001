function [features_Data] =  extract_HOG_Features(img_Data)
    img1D=img_Data(:,1);
    img2D=reshape(img1D,28,28);
    [featuresVector]=extractHOGFeatures(img2D,'CellSize',[2 2],'BlockSize',[4 4],'NumBins',16);
    nsize=length(featuresVector);
    nData=size(img_Data,2);
    features_Data=zeros(nsize,nData);   
    for i = 1:nData
        img1D=img_Data(:,i);
        img2D=reshape(img1D,28,28);     
        features_Data(:,i)=extractHOGFeatures(img2D,'CellSize',[2 2],'BlockSize',[4 4],'NumBins',16);
    end
end