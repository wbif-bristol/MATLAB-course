% Session 3, Exercise 6: Adding objects to a cell array
%
% At this point we should have everything we need to segment all nuclei and
% store them as objects.  In this exercise we need to find all the unique
% nuclei labels there are in our labelled image, then loop over each of
% these.  For each nucleus, we create an object and store it in a new
% element of a cell array.

% Clearing the workspace
clear

% From the previous exercises we have the following code, which generates
% the labelled image.
nuc_im = imread('NucleiImage_small.tif');
filt_im = medfilt2(nuc_im, [5, 5]);
thresh = graythresh(filt_im)*255;
log_im = filt_im > thresh;
fill_im = imfill(log_im,'holes');
label_im = bwlabel(fill_im);

% We can use the unique function to find all the unique labels in our
% image.
unique_IDs = unique(label_im);

% Determining how many unique IDs there are.
n_IDs = length(unique_IDs);

% Initialising the cell array to hold the nuclei objects.  We need one
% fewer than the number of unique IDs, as the first ID in the list is 0,
% which corresponds to background pixels.
obj_cells = cell(n_IDs - 1,1);

% Looping over all the unique IDs.  We start the loop at 2, because the
% first unique value will be 0, which corresponds to the background pixels.
for i = 2:n_IDs
    unique_ID = unique_IDs(i);
    
    % Adding the code from the previous exercises to get the coordinates
    % for this nucleus, then use this to create a new object.
    bin_im = label_im == unique_ID;
    [rows, cols] = find(bin_im);
    coords = cat(2,rows,cols);
    nuc_obj = nucleus(unique_ID, coords);
    
    % Putting the new object in the cell array.  The iterator variable (i)
    % acts as the index, but needs to be reduced by 1, since counting
    % starts at 2.
    obj_cells{i-1} = nuc_obj;
    
end

% Displaying the cell array
disp(obj_cells);
