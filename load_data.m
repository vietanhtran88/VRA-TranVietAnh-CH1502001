function [img,label] =  load_data(str_file_img,str_file_label)
    img=loadMNISTImages(str_file_img);
    label=loadMNISTLabels(str_file_label);
end