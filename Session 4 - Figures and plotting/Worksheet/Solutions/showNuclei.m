% Session 4, Exercise 3: Displaying plots over an image
%
% This function takes a 2D numeric array of pixel values and draws the
% centroids for the provided nuclei over the top.  There are no returned
% values, as the output image is displayed.

function showNuclei(input_im, nuc_objs)

% Creating a new figure window and displaying the input image with
% autoscaled intensities.
figure;
imshow(input_im, []);

% Using hold on, so all subsequent plotting function calls will be applied
% to the existing figure.
hold on

% Iterating over each nucleus in the provided nuc_objs cell array
for i = 1:length(nuc_objs)
   % Getting the current object
   curr_obj = nuc_objs{i};
    
   % Using the getCentroid method of the current Nucleus object to get a
   % vector containing the centroid coordinates.  These are output as
   % [mean_row, mean_col].
   centroid = curr_obj.getCentroid();
   
   % Using the plot function to display the single point corresponding to
   % the current nucleus' centroid.  Note that plot takes arguments in the
   % order X,Y; however, our centroid vector is row,column (i.e. Y,X).  The
   % LineSpec argument here is 'r.' which is a red dot.  The 'MarkerSize' 
   % key allows us to control the size of the spot.
   plot(centroid(2), centroid(1), 'r.', 'MarkerSize', 15);
   
end