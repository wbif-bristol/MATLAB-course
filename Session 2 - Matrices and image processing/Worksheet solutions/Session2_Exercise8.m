% Session 2, Exercise 8: Identifying nuclei objects
%
% With the image now reduced to a binarised simplification, we can identify
% objects.  The bwlabel function uses connected components labelling to
% assign all connected regions a unique ID.  The output from this is an
% image of the same size as the input, but where each pixel's itensity
% corresponds to its label.  Background pixels are labelled 0.

% Starting by clearing the workspace
clear

% From the previous exercises we have the following code.
nuc_im = imread('NucleiImage.tif');
bg_im = imread('BackgroundImage.tif');
sub_im = nuc_im - bg_im;
filt_im = medfilt2(sub_im, [5, 5]);
thresh = graythresh(filt_im)*255;
disp(['Threshold = ', num2str(thresh)]);
log_im = filt_im > thresh;
fill_im = imfill(log_im,'holes');

% Applying labelling
label_im = bwlabel(fill_im);

% Displaying the labelled nuclei image.
figure
imshow(label_im,[]);

% This will give us a greyscale image; however, it's not particularly easy
% to tell from this which objects have been identified as separate from
% their neighbours.  Similarly, it doesn't highlight the objects with low
% label values very well.  We can use the label2rgb function to convert
% this to an rgb image.  The 'lines' argument specifies the colourmap to 
% use, 'black' specifies the background colour and 'shuffle' will randomise
% the colours.
rand_label_im = label2rgb(label_im,'lines','black','shuffle');

% Displaying the labelled nuclei image with randomised colours.
figure
imshow(rand_label_im);
