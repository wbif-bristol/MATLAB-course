% Session 3, Exercise 6: Adding objects to a cell array
%
% At this point we should have everything we need to segment all nuclei and
% store them as objects.  In this exercise we need to find all the unique
% nuclei labels there are in our labelled image, then loop over each of
% these.  For each nucleus, we create an object and store it in a new
% element of a cell array.

% Clearing the workspace
clear

% From the previous exercises we have the following code, which generates
% the labelled image.
nuc_im = imread('NucleiImage_small.tif');
filt_im = medfilt2(nuc_im, [5, 5]);
thresh = graythresh(filt_im)*255;
log_im = filt_im > thresh;
fill_im = imfill(log_im,'holes');
label_im = bwlabel(fill_im);

% We can use the unique function to find all the unique labels in our
% image.
unique_IDs = unique(label_im);

% 
bin_im = label_im == ID;
[rows, cols] = find(bin_im);
coords = cat(2,rows,cols);
nuc_obj = nucleus(ID, coords);

