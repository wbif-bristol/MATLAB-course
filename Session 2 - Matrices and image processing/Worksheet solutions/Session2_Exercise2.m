% Session 2, Exercise 2: Subtracting the background
%
% Using array operations, we can subtract the background image from the
% nuclei image using a single line of code.  This will work on a
% pixel-by-pixel basis.

% Starting by clearing the workspace
clear

% From the previous exercise we have the following code.
nuc_im = imread('NucleiImage.tif');
bg_im = imread('BackgroundImage.tif');

% Subtracting the background image from the nuclei image
sub_im = nuc_im - bg_im;

% Displaying the subtracted image
figure
imshow(sub_im,[]);
