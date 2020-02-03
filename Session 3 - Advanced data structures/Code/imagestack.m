classdef imagestack
    properties
        pixels    % 3D pixel array
        cal       % Spatial calibration in XY
    end
    
    methods
        % The constructor method
        function obj = imagestack(px_in, cal_in)
            obj.pixels = pixels;
        end
        
        function showImage(obj) 
           figure(); % Open a new figure
           obj(:,:,3) = 0; % Convert to RGB
           imshow(obj); % Display image           
        end
    end
end