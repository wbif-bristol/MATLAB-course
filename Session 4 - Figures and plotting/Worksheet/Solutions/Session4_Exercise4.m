% Session 4, Exercise 4: Acquiring values from dialogs
%
% Here we are testing using the inputdlg function to display a control,
% which allows the user to enter a value to be used in the code.

% Clearing the workspace
clear

% Not using any code from the previous exercise

% Using the inputdlg function to display the dialog.  The titles for all
% input fields are specified in the first argument as a cell array
% (although here we only have a single value).  We can set the dialog title
% with the second argument.  The third argument specifies how many lines
% each input field should occupy.  The fourth argument is used for
% specifying the default values (in our case, 50); as with the field names,
% this is formatted as a cell array.
returned_vals = inputdlg({'Minimum cell area (px^2)'}, '', 1, {'50'});

% The output from the input dialog is a cell array of strings.  We need to
% get the first (and only) cell.
area_thresh_str = returned_vals{1};
disp(['Area threshold = ',area_thresh_str]);
