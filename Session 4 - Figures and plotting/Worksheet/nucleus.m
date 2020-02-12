% Session 3, Exercise 3: Defining an object class
% Session 3, Exercise 4: Adding methods to class definitions (nucleus area)
% Session 3, Exercise 5: Adding methods to class definitions (centroid)

% This class definition file is built-up over the course of three
% exercises.  The main body is created during Exercise 3, while the method
% definitions getArea and getCentroid are introduced in Exercises 4 and
% 5 respectively.

classdef nucleus
    % Defining what properties the nucleus objects will have.  No data is
    % explicitly stored in the class definition; this is simply a way of
    % telling MATLAB what data to expect a nucleus object to have.
    properties
        ID       % The ID number of this nucleus
        pixels   % The Nx2 pixel coordinate array
    end
    
    % Defining the methods (functions) that objects of this class are able
    % to perform.
    methods
        % The constructor method runs when the object is created.  We use
        % this to load the actual values of ID and pixel array into our
        % newly-created object instance.  The constructor must return 
        % "obj", which is the reference to our new object.
        function obj = nucleus(ID, pixels)
            % Taking the ID and pixels values which are passed as arguments
            % and assigning them to the properties of this object.
            obj.ID = ID;
            obj.pixels = pixels;            
        end
        
        % Method to calculate the area of this object.  It takes the obj
        % instance as an argument (this is standard for all non-constructor
        % methods).  This argument is automatically included by MATLAB, so
        % there is no need to include it when running the getArea method.
        function area = getArea(obj)
            % This function returns the number of pixels in this object.
            area = size(obj.pixels,1);            
        end
        
        % Method to calculate the centroid location of this object.  As
        % with getArea, this method takes "obj" as an argument.  The
        % centroid is returned as a 1x2 array (i.e. [mean_row, mean_col]).
        function centroid = getCentroid(obj)
            % Calculating the mean of all values in the first column of the
            % coordinate array (i.e. rows).
            mean_row = mean(obj.pixels(:,1));
            
            % Calculating the mean of all values in the second column of 
            % the coordinate array (i.e. cols).
            mean_col = mean(obj.pixels(:,2));
            
            % Adding the two values to an array
            centroid = [mean_row, mean_col];            
        end
    end
end