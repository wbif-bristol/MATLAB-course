n_steps = 60;

set(gca,'CameraViewAngleMode','Manual')

az = -37.5;
for i = 1:n_steps
    view(az,30);
    az = az + (360/n_steps);
    fr = getframe(gcf);
    imwrite(fr.cdata,sprintf('Rot %i.tif',i));
    
end