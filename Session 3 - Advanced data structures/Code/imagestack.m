classdef imagestack
    properties
        pixels    % 3D pixel array
        cal       % Spatial calibration in XY
    end
    
    methods
        % The constructor method
        function obj = imagestack(px_in, cal_in)
            obj.pixels = px_in;
            obj.cal = cal_in;
        end
        
        function showImage(obj) 
           figure(); % Open a new figure
           obj.pixels(:,:,3) = 0; % To RGB
           imshow(obj.pixels); % Display image           
        end
    end
end