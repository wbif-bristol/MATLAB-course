% [MENTION THAT THE OUTPUT FROM INPUTDLG IS A CELL ARRAY]
clear

% Not using any code from the previous exercise

returned_vals = inputdlg('Minimum cell area (px^2)', '', 1, {'50'});

% The output from the input dialog is a cell array of strings.  We need to
% get the first cell.
area_thresh_str = returned_vals{1};
disp(['Area threshold = ',area_thresh_str]);
