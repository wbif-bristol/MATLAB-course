classdef coordvolume
    properties
       coords % N x 2 array of pixel coords
    end
    
    methods
        function obj = coordvolume(coords_in)
            obj.coords = coords_in;
        end
        
        function [row, col] = getCentroid(obj)
           row = mean(obj.coords(:,1));
           col = mean(obj.coords(:,2));
        end
        
        function im = addOutline(obj, im)
            
        end
    end
end