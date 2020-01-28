% Session 1, Exercise 6: Creating function files
%
% The function file I've created for this is saved as a separate file 
% "isodd.m", which outputs 1 if the input value is odd and 0 if the value 
% is even.  In this script file we use that function and add a bit of text
% to the end of our message to indicate if the number is odd or even.

% Starting by clearing the workspace
clear

% From the previous exercises we have the following code.
rand_1 = rand(1)*100;
rand_int = round(rand_1);
rand_1_str = num2str(rand_1);
rand_int_str = num2str(rand_int);

% Running the isodd function to find if the value is odd.  The value 1
% (odd) or 0 (even) can then be converted to a string using num2str.
state = isodd(rand_int);
state_str = num2str(state);

% Updating the printed text to include this
disp(['Double value = ',rand_1_str,', integer value = ',rand_int_str, ', is odd = ',state_str]);
