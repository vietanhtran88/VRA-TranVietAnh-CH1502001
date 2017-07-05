function [features_Data] =  extract_HOG_Features(img_Data)
    img1D=img_Data(:,1);
    img2D=reshape(img1D,28,28);    
%     'CellSize',[4 4]
     [featuresVector,visualHOG]=extractHOGFeatures(img2D,'CellSize',[4 4]);

%     [featuresVector,visualHOG]=extractHOGFeatures(img2D);
    nsize=length(featuresVector);
    nData=size(img_Data,2);
    features_Data=zeros(nsize,nData);   
    for i = 1:nData
        img1D=img_Data(:,i);
        img2D=reshape(img1D,28,28);     
%         'CellSize',[4 4]
        features_Data(:,i)=extractHOGFeatures(img2D,'CellSize',[4 4]);
    end
end