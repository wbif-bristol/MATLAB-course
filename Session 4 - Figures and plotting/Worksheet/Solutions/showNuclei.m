function showNuclei(input_im, nuc_objs)

figure;
imshow(input_im, [0 128]);

hold on

for i = 1:length(nuc_objs)
   % Getting the current object
   curr_obj = nuc_objs{i};
    
   centroid = curr_obj.getCentroid();
   
   plot(centroid(2), centroid(1), 'r.', 'MarkerSize', 15);
   
end