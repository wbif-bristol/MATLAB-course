% Session 3, Exercise 3: Defining an object class
%
% The class definition file created as part of this exercise is called
% "nuclei.m".  Since this file is built-up over three exercises, you can
% ignore the two method definitions (getArea and getCentroid) for now.

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

% Initialising a nucleus object for nucleus 4.  Omitting the semicolon, so
% we can check the ID and pixel array look correct.
nuc_obj = nucleus(ID, coords)
