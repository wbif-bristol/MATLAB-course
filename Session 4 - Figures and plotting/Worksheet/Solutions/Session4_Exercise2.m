% Session 4, Exercise 2: Creating Nucleus cell array for the selected image
%
% Here, we are using the code from the previous exercise to select an
% image, then using the provided functions to generate a cell array of
% Nucleus class objects.

% Clearing the workspace
clear

% From the previous exercise we have the following code.
[file_name, file_path] = uigetfile('*.tif');
disp(['Selected file: ',file_path,file_name]);

% Loading the image into the workspace
input_im = imread([file_path,file_name]);

% Using the provided functions to obtain a cell array of Nucleus objects
label_im = labelImage(input_im);
nuc_objs = createNucleiObjects(label_im);

% Displaying the number of detected objects
n_obj = size(nuc_objs,1);
n_obj_str = num2str(n_obj);
disp(['Detected ',n_obj_str,' nuclei']);
