% Session 3, Exercise 4: Adding methods to class definitions (nucleus area)
%
% The main element of this exercise is to update the class definition file
% "nucleus.m".  The method added allows us to calculate the area (number of
% pixels) for our nucleus object.

% Clearing the workspace
clear

% From the previous exercises we have the following code.
nuc_im = imread('NucleiImage_small.tif');
filt_im = medfilt2(nuc_im, [5, 5]);
thresh = graythresh(filt_im)*255;
log_im = filt_im > thresh;
fill_im = imfill(log_im,'holes');
label_im = bwlabel(fill_im);
ID = 4;
bin_im = label_im == ID;
[rows, cols] = find(bin_im);
coords = cat(2,rows,cols);
nuc_obj = nucleus(ID, coords);

% Runing the getArea method to verify we get the value 645.  Note how the
% method definition required the obj argument, but when we call the method
% this is omitted.  This is because MATLAB automatically passes this
% argument to object methods.
nuc_obj.getArea()
