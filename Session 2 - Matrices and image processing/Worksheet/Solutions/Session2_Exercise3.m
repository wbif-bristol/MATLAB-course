% Session 2, Exercise 3: Removing noise in the image
%
% For 2D median filtering we can use MATLAB's built-in medfilt2 function.  
% This works on 2D arrays (for 1D or 3D median filtering there are the 
% medfilt and medfilt3 functions, respectively).  By default, medfilt2 will
% assign each pixel the median value (intensity) of the 3x3 pixel region
% centred on it.

% Starting by clearing the workspace
clear

% From the previous exercises we have the following code.
nuc_im = imread('NucleiImage.tif');
bg_im = imread('BackgroundImage.tif');
sub_im = nuc_im - bg_im;

% Applying the median filter.  We want a 2px radius region, but region 
% widths must be specified as integers, so we can either use a 3x3 region
% (radius = 1.5px)or a 5x5 region (radius = 2.5px).  For this, either
% should be fine, but I'll use the 5x5 region.
filt_im = medfilt2(sub_im, [5, 5]);

% Displaying the filtered image
figure
imshow(filt_im,[]);
