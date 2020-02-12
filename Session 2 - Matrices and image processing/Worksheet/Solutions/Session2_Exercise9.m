% Session 2, Exercise 9: Measure the number of pixels in each object
%
% One way to measure the size of each nucleus is to count how many pixels
% it contains.  To do this, we can identify all the different labels in the
% image (with the unique function), as each label corresponds to one 
% nucleus.  We then iterate over each of these labels using a for-loop.
% During each iteration of the for-loop, we can use array operations to
% count the number of pixels in the image have that value.  In this
% example, I've done this by binarising the image (similar to how we did it
% in Exercise 6, but checking for equality) and summing all pixel values.
% This works because the binarised image will have values of 0 (pixels not
% part of the nucleus) and 1 (pixels inside our current nucleus).

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
fill_im = imfill(log_im,'holes');
label_im = bwlabel(fill_im);

% First, we need to identify the unique labels in the labelled image.  For
% this, we can use the unique function.  This will give us a 1D array
% containing all the unique values in the input array.
unique_IDs = unique(label_im);

% We want to count the number of pixels in the labelled image that have 
% each label value (i.e. how many labelled "1", "2", "3", and so on).  To
% do this we can loop over all values in the unique_IDs array.  The length 
% function tells us how many elements are in this unique_IDs array, we need
% to know this to know how many times to run our loop.  We start the loop
% at 2, because we know the first unique element of unique_IDs will be 0, 
% which corresponds to the background.
for i = 2:length(unique_IDs)
    unique_ID = unique_IDs(i);
    
    % Using array operations to create a binary image which is true (1) 
    % when the pixel has that label and false (0) otherwise.
    bin_im = label_im == unique_ID;

    % We can get the number of pixels in the current nucleus by summing the
    % pixels in the binary image (i.e. they're 1 when on the nucleus and 0
    % otherwise).  We need to linearise the array before doing this (using
    % a single : operator), otherwise we will get the sum of each column.
    n_px = sum(bin_im(:));
    
    % Displaying a message stating how many pixels were within each
    % nucleus.
    unique_ID_str = num2str(unique_ID);
    n_px_str = num2str(n_px);
    disp(['Nucleus ID = ', unique_ID_str, ', N pixels = ',n_px_str]);
    
end
