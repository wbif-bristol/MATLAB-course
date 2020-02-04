% Session 2, Exercise 1: Loading images from file
%
% Image loading can be done with the imread function.  Since both our
% image files only contain a single image, we can just use the most basic
% form of imread.

% Starting by clearing the workspace
clear

% Loading the nuclei image.  This will only work if the NucleiImage.tif
% file is in the working directory.  If not, you'll have to update the path
% accordingly.
nuc_im = imread('NucleiImage.tif');

% Loading the background image.
bg_im = imread('BackgroundImage.tif');

% Displaying the two images.  The figure command opens a new window into
% which the image will be displayed.  If we didn't include the figure
% command, the background image would immediately draw over the nuclei
% image.
figure
imshow(nuc_im,[]);
figure
imshow(bg_im,[]);

% Note: You can read images directly from the internet.  You just need to
% provide the full URL to that image.  I haven't here, because the paths to
% these images on GitHub are pretty long.
