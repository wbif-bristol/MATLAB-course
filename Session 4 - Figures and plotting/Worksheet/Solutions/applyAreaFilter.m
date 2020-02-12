function filt_nuc_objs = applyAreaFilter(nuc_objs, area_thresh)

% Initialising the logical array
log_arr = false(length(nuc_objs),1);

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
