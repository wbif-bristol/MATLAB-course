% Description: 
% Applies the filtering, thresholding and labelling steps from
% Session 2 to an image.
%
% Arguments:
%   input_im is the image to process as a 2D numeric pixel array 
%
% Returned:
%	label_im is the labelled image as a 2D numeric pixel array.   All 
%   pixels corresponding to the same nucleus are given the same pixel 
%   value.  Background pixels are assigned a value of 0.

function label_im = labelImage(input_im)

% Applying 2D median filter
filt_im = medfilt2(input_im, [5, 5]);

% Calculating intensity threshold
thresh = graythresh(filt_im)*255;

% Applying threshold
log_im = filt_im > thresh;

% Filling holes
fill_im = imfill(log_im,'holes');

% Labelling nuclei
label_im = bwlabel(fill_im);
