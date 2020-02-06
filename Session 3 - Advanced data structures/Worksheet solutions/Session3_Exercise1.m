% Session 3, Exercise 1: Getting the labelled nuclei image
%
% This exercise simply involves copying the code from the worksheet into a
% new script file.  The purpose of this is to ensure everyone is starting
% from the same point.

% Clearing the workspace
clear
 
% Loading the nuclei image
nuc_im = imread('NucleiImage_small.tif');
 
% Applying a 2D median filter
filt_im = medfilt2(nuc_im, [5, 5]);
 
% Calculating and applying threshold
thresh = graythresh(filt_im)*255;
log_im = filt_im > thresh;
 
% Filling holes in the binarisation
fill_im = imfill(log_im,'holes');
 
% Creating labelled image of nuclei
label_im = bwlabel(fill_im);
 
% Displaying the labelled image
imshow(label_im,[]);
