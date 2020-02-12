% Session 4, Exercise 6: Creating a histogram
%
% Our final exercise sees us use all our previous code to generate a cell
% array of area-filtered nuclei.  We then use the histogram function to
% display the area distribution of the remaining nuclei.

% Clearing the workspace
clear

% From the previous exercises we have the following code.  This combines
% the code from Exercises 3 and 4.  Note how the output from the input
% dialog is converted to a number.
[file_name, file_path] = uigetfile('*.tif');
disp(['Selected file: ',file_path,file_name]);
returned_vals = inputdlg('Minimum cell area (px^2)', '', 1, {'50'});
disp(['Area threshold = ',returned_vals{1}]);
area_thresh = str2double(returned_vals{1});
input_im = imread([file_path,file_name]);
label_im = labelImage(input_im);
nuc_objs = createNucleiObjects(label_im);
disp(['Detected ',num2str(length(nuc_objs)),' nuclei']);
filt_nuc_objs = applyAreaFilter(nuc_objs, area_thresh);
disp([num2str(length(filt_nuc_objs)),' nuclei remaining after area filter']);
showNuclei(input_im, filt_nuc_objs);

% For plotting we need a numeric array of nuclei areas (as this is what the
% histogram function expects as an argument).  First, we initialise the 
% array.
area_array = zeros(length(filt_nuc_objs), 1);

% Populating the area array with values
for i = 1:length(filt_nuc_objs)
   % Adding the current nucleus' area to the numeric array
   area_array(i) = filt_nuc_objs{i}.getArea();
   
end

% Creating the histogram.  We specify the bin range 0:100:1000, which will
% be a vector of [0,100,200,300,400,500,600,700,800,900,1000].
figure;
histogram(area_array, 0:100:1000);

% Finally, we can use the labelling functions to add axis labels to our
% plot.
xlabel('Nucleus area (px^2)');
ylabel('Frequency');
