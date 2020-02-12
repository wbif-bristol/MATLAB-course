% Session 2, Exercise 5: Binarising the image (using loops)
%
% We can apply the threshold using a pair of nested loops; the first of
% these iterates over each row, while the second iterates over each column.
% As such, for each row iteration, we will process each column.  This whole
% process should be relatively slow compared to doing the same thing using
% array operations.

% Starting by clearing the workspace
clear

% From the previous exercises we have the following code.
nuc_im = imread('NucleiImage.tif');
bg_im = imread('BackgroundImage.tif');
sub_im = nuc_im - bg_im;
filt_im = medfilt2(sub_im, [5, 5]);
thresh = graythresh(filt_im)*255;
disp(['Threshold = ', num2str(thresh)]);

% Initialising the logical array of equal size to the input image.  To do
% this we can use the "false" function, which will set all values to false.
% For step iv of this exercise you should comment out the initialisation
% step and see how this affects the execution time.
[n_rows, n_cols] = size(filt_im);
log_im = false(n_rows, n_cols);

% Creating a pair of nested loops to iterate over all pixels.  This pair of
% loops is enclosed by tic toc commands, which will report how long the
% whole process took.
tic
for row = 1:n_rows
   for col = 1:n_cols
       % Checking if the pixel at (row, col) is greater than the threshold.
       log_im(row,col) = filt_im(row,col) > thresh;
              
   end
end
toc

% Displaying the logical array.  This should be a binarised copy of the
% input image.
figure
imshow(log_im);
