% Session 4, Exercise 1: Getting the path to the input image
%
% For this exercise we use the uigetfile function to display a file
% selection window.  This outputs both the name of the selected file and
% the path to that file.

% Clearing the workspace
clear

% Using the uigetfile function.  We specify the target extension (.tif) as
% an argument, which will cause the file selection window to only show
% folders and files with the .tif extension.
[file_name, file_path] = uigetfile('.tif');

% Displaying the path to the selected file
disp(['Selected file: ',file_path,file_name]);