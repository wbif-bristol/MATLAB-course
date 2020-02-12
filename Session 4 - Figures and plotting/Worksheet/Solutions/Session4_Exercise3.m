clear

% From the previous exercises we have the following code.
[file_name, file_path] = uigetfile('*.tif');
disp(['Selected file: ',file_path,file_name]);
input_im = imread([file_path,file_name]);
label_im = labelImage(input_im);
nuc_objs = createNucleiObjects(label_im);
n_obj = size(nuc_objs,1);
disp(['Detected ',num2str(n_obj),' nuclei']);

% Running our new showNuclei function
showNuclei(input_im, nuc_objs);
