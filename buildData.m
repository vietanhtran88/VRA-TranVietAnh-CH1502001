function buildData()
%%  Load Data Train
    strData = 'Data\train-images.idx3-ubyte';
    strDataLabel = 'Data\train-labels.idx1-ubyte';
    [imgDataTrain,lblDataTrain] = load_data(strData,strDataLabel);
%%  Create Folder Data
    mkdir Data\DataTrain;
	mkdir Data\DataTrain 0;
	mkdir Data\DataTrain 1;
	mkdir Data\DataTrain 2;
	mkdir Data\DataTrain 3;
	mkdir Data\DataTrain 4;
	mkdir Data\DataTrain 5;
	mkdir Data\DataTrain 6;
	mkdir Data\DataTrain 7;
	mkdir Data\DataTrain 8;
	mkdir Data\DataTrain 9;
%%  Build Data Train
    nCount = zeros(1,10);
    nDataTrain = size(imgDataTrain,2);
    for i = 1:nDataTrain
        img1D = imgDataTrain(:,i);
        img2D = reshape(img1D,28,28);
        
        lblI = lblDataTrain(i);
        nCount(lblI+1) = nCount(lblI+1) + 1;               
        
        nID = nCount(lblI+1);
        if(nID<10)
            strNumber = ['000' num2str(nID)];
        elseif(nID<100)
                strNumber = ['00' num2str(nID)];
            elseif(nID<1000)
                    strNumber = ['0' num2str(nID)];
                else
                    strNumber = num2str(nID);
        end
        
        strNameFile = ['Data\DataTrain\' num2str(lblI) '\image_' strNumber '.jpg'];
        imwrite(img2D,strNameFile);
    end
%%  Load Data Test
    strData = 'Data\t10k-images.idx3-ubyte';
    strDataLabel = 'Data\t10k-labels.idx1-ubyte';
    [imgDataTest,lblActualDataTest] = load_data(strData,strDataLabel);
%%  Create Folder Data
    mkdir DataTest;
	mkdir Data\DataTest 0;
	mkdir Data\DataTest 1;
	mkdir Data\DataTest 2;
	mkdir Data\DataTest 3;
	mkdir Data\DataTest 4;
	mkdir Data\DataTest 5;
	mkdir Data\DataTest 6;
	mkdir Data\DataTest 7;
	mkdir Data\DataTest 8;
	mkdir Data\DataTest 9;
%% Build Data Test
    nCount = zeros(1,10);
    nDataTest = size(imgDataTest,2);
    for i = 1:nDataTest
        img1D = imgDataTest(:,i);
        img2D = reshape(img1D,28,28);
        
        lblI = lblActualDataTest(i);
        nCount(lblI+1) = nCount(lblI+1) + 1;               
        
        nID = nCount(lblI+1);
        if(nID<10)
            strNumber = ['000' num2str(nID)];
        elseif(nID<100)
                strNumber = ['00' num2str(nID)];
            elseif(nID<1000)
                    strNumber = ['0' num2str(nID)];
                else
                    strNumber = num2str(nID);
        end
        
        strNameFile = ['Data\DataTest\' num2str(lblI) '\image_' strNumber '.jpg'];
        imwrite(img2D,strNameFile);
    end    
end
