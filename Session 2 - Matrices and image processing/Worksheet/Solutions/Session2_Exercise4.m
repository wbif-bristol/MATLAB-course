% Session 2, Exercise 4: Binarising the image (calculating the threshold)
%
% We already know we need to use the graythresh function, which uses the
% method of Otsu to calculate the intensity threshold.  This function
% outputs the threshold as a double-precision value in the range 0-1.  By
% using the whos function (introduced in Session 1) we can see that our
% loaded image is of the uint8 type, so has values in the range 0-255.  We
% can convert our threshold to 0-255 by simply multiplying by 255.

% Starting by clearing the workspace
clear

% From the previous exercises we have the following code.
nuc_im = imread('NucleiImage.tif');
bg_im = imread('BackgroundImage.tif');
sub_im = nuc_im - bg_im;
filt_im = medfilt2(sub_im, [5, 5]);

% Displaying information about our filtered image (we should see it's in 
% the "uint8" data type).
whos filt_im

% Using graythresh to get the threshold value, then converting to the range
% 0-255.
thresh_norm = graythresh(filt_im);
thresh = thresh_norm*255;

% I've formatted the results of the threshold into a string to make it 
% easier to read (we covered this in Session 1).
disp(['Threshold = ', num2str(thresh)]);
