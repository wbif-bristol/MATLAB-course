clear

% From the previous exercises we have the following code.  This combines
% the code from Exercises 3 and 4.  Note how the output from the input
% dialog is converted to a number.
[file_name, file_path] = uigetfile('*.tif');
disp(['Selected file: ',file_path,file_name]);
returned_vals = inputdlg('Minimum cell area (px^2)', '', 1, {'50'});
disp(['Area threshold = ',returned_vals{1}]);
area_thresh = str2double(returned_vals{1});
input_im = imread([file_path,file_name]);
label_im = labelImage(input_im);
nuc_objs = createNucleiObjects(label_im);
disp(['Detected ',num2str(length(nuc_objs)),' nuclei']);

% Using the applyAreaFilter function we just prepared to create a second
% Nucleus object cell array containing only those nuclei with areas greater
% than the user-defined threshold.
filt_nuc_objs = applyAreaFilter(nuc_objs, area_thresh);

% Displaying the number of remaining nuclei
disp([num2str(length(filt_nuc_objs)),' nuclei remaining after area filter']);

% Using the showNuclei function we created in Exercise 4 to show the
% remaining nuclei.  We now want to input the filtered nuclei cell array.
showNuclei(input_im, filt_nuc_objs);
