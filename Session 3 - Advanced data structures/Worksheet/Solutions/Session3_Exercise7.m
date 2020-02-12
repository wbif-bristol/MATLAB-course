% Session 3, Exercise 7: Using objects
%
% For this final exercise we use another loop to iterated over each element
% of our now-populated cell array.  For each object we want to run the
% getArea and getCentroid methods.  The outputs from these methods are
% converted to text and concatenated together in a similar manner to
% previous worksheets.

% Clearing the workspace
clear

% From the previous exercises we have the following code.
nuc_im = imread('NucleiImage_small.tif');
filt_im = medfilt2(nuc_im, [5, 5]);
thresh = graythresh(filt_im)*255;
log_im = filt_im > thresh;
fill_im = imfill(log_im,'holes');
label_im = bwlabel(fill_im);
unique_IDs = unique(label_im);
n_IDs = length(unique_IDs);
obj_cells = cell(n_IDs - 1,1);

for i = 2:n_IDs
    unique_ID = unique_IDs(i);
    bin_im = label_im == unique_ID;
    [rows, cols] = find(bin_im);
    coords = cat(2,rows,cols);
    nuc_obj = nucleus(unique_ID, coords);
    obj_cells{i-1} = nuc_obj;    
end

% Looping over each element of the cell array
for i = 1:length(obj_cells)
   % Getting the current object
   curr_obj = obj_cells{i};
   
   % Getting the ID number and converting this to text
   ID = curr_obj.ID;
   ID_str = ['Nucleus ',num2str(ID)];
   
   % Using the getArea method and converting this to text
   area = curr_obj.getArea();
   area_str = ['area = ',num2str(area)];
   
   % Using the getCentroid method, extracting the mean row and column 
   % values, then converting these to text.
   centroid = curr_obj.getCentroid();
   mean_row_str = num2str(centroid(1));
   mean_col_str = num2str(centroid(2));
   centroid_str = ['centroid = (',mean_row_str,', ',mean_col_str,')'];
   
   % Displaying the message
   disp([ID_str,', ',area_str,', ',centroid_str]);
   
end
