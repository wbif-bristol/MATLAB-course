% Session 4, Exercise 5: Applying the minimum nucleus area filter
%
% This function takes a cell array of nuclei objects and an area threshold
% value and outputs a new cell array containing only nuclei with areas
% larger than the threshold.

function filt_nuc_objs = applyAreaFilter(nuc_objs, area_thresh)

% Initialising the logical array
log_arr = false(length(nuc_objs),1);

% Iterating over all nuclei in the input nuclei objects cell array
for i = 1:length(nuc_objs)
   % Getting the current object area
   curr_area = nuc_objs{i}.getArea();
     
   % If the current nucleus area is greater than the user-defined 
   % threshold, setting the corresponding logical array value to true.
   if curr_area > area_thresh
       log_arr(i) = true;
   end
end

% Applying the logical array to the input cell array.
filt_nuc_objs = nuc_objs(log_arr);
