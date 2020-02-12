% Session 2, Exercise 7: Optimising the binarised images (filling holes)
%
% Hole filling in MATLAB can be done using the imfill function, which takes
% a binary image and identifies any background-labelled (i.e. false or "0")
% pixels entirely enclosed by foreground-labelled pixels.

% Starting by clearing the workspace
clear

% From the previous exercises we have the following code.
nuc_im = imread('NucleiImage.tif');
bg_im = imread('BackgroundImage.tif');
sub_im = nuc_im - bg_im;
filt_im = medfilt2(sub_im, [5, 5]);
thresh = graythresh(filt_im)*255;
disp(['Threshold = ', num2str(thresh)]);
log_im = filt_im > thresh;

% Using the imfill function to fill holes in our binarised (logical) image.
% To perform hole filling, we need to specify 'holes' as an argument.  The
% only way to know this was the case was by reading the documentation.
fill_im = imfill(log_im,'holes');

% Displaying the logical image with filled holes.
figure
imshow(fill_im);
