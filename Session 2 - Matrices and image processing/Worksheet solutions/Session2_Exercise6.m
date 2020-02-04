% Session 2, Exercise 6: Binarising the image (array operations)
%
% This script should give the same result as in Exercise 5; however, we can
% replace the nested loops with a single command.  Using array operations
% it's also not necessary to intialise the logical array, as this will only
% be created once (not continually resized, as happens with loops).

% Starting by clearing the workspace
clear

% From the previous exercises we have the following code.
nuc_im = imread('NucleiImage.tif');
bg_im = imread('BackgroundImage.tif');
sub_im = nuc_im - bg_im;
filt_im = medfilt2(sub_im, [5, 5]);
thresh = graythresh(filt_im)*255;
disp(['Threshold = ', num2str(thresh)]);

% Using a single array operation to check which pixels are greater than
% the threshold.  By using the > operator on an array, it is applied to all
% pixels simultaneously.  This command is enclosed by tic toc commands,
% which will report how long the whole process took.
tic
log_im = filt_im > thresh;
toc

% Displaying the logical array.  This should be a binarised copy of the
% input image.
figure
imshow(log_im);
