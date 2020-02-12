% Description: 
% Converts a labelled image to individual objects.  Each object stores its
% initial label (ID) and an Nx2 numeric array of row and column
% coordinates, where N is the number of pixels corresponding to that
% object.
%
% Arguments:
%   lab_im is the input labelled image to process.  This should be a 2D 
%   numeric array.
%
% Returned:
%	nuc_objs is a cell array containing the Nucleus class objects.  Each
%	cell contains a single object.

function nuc_objs = createNucleiObjects(label_im)

% Determining the number of unique object labels in label_im
unique_IDs = unique(label_im);
n_IDs = length(unique_IDs);

% Initialising the cell array to hold the nuclei objects.
nuc_objs = cell(n_IDs - 1,1);

% Iterating over all labels (except the first, which is 0 and corresponds
% to the background).
for i = 2:n_IDs
    % Getting the current label.
    unique_ID = unique_IDs(i);
    
    % Creating a logical (binary) image which is true (1) for all pixels 
    % with the current label and false (0) elsewhere.
    bin_im = label_im == unique_ID;
    
    % Extracting the row and column indices for the true pixels in the
    % logical image.
    [rows, cols] = find(bin_im);
    
    % Concatenating the row and column indices to a Nx2 array, where N is
    % the number of pixels corresponding to this nucleus.
    coords = cat(2,rows,cols);
    
    % Creating the current Nucleus class object from the current ID (label)
    % and coordinate array.
    nuc_obj = nucleus(unique_ID, coords);
    
    % Adding the new Nucleus object to the cell array.
    nuc_objs{i-1} = nuc_obj;    
    
end
