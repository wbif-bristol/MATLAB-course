% Session 3, Exercise 2: Getting pixel coordinates for a single nucleus
%
% One way to approach this is to use the find function.  The find function
% will return the row and column indices of a logical array correspond to
% true values.  As such, we need to start by generating such a logical
% array.  For this example, we're going to do it just for nucleus 4.

% Clearing the workspace
clear

% From the previous exercise we have the following code (I've removed the
% comments to keep it brief).
nuc_im = imread('NucleiImage_small.tif');
filt_im = medfilt2(nuc_im, [5, 5]);
thresh = graythresh(filt_im)*255;
log_im = filt_im > thresh;
fill_im = imfill(log_im,'holes');
label_im = bwlabel(fill_im);

% Generating a logical array (binary image) for nucleus 4.
ID = 4;
bin_im = label_im == ID;

% Displaying the logical array, so we can see that it's identifying a
% single nucleus
figure
imshow(bin_im, []);

% Using the find function to get the row and column indices of true pixels
[rows, cols] = find(bin_im);

% Concatenating the two arrays into a single Nx2 array.  We covered array
% concatenation in Session 1.  There are a few valid ways to do this, but
% I'll go with the cat function.
coords = cat(2,rows,cols);

% Displaying the array size to ensure it's 645x2
disp(size(coords));
