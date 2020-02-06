% Session 3, Exercise 5: Adding methods to class definitions (centroid)
%
% As with Exercise 4, the key aspect of this exercise is to add a method to
% the nucleus class definition.  The new method calculates the centroid
% (mean row and column coordinates).

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

% Runing the getCentroid method to verify it's working as expected.
% Hopefully we get the coordinatee (35.4930, 96.7860).
nuc_obj.getCentroid()
