% Session 1, Exercise 5: Handling text
%
% To combine text and numbers in a single text string there are a few 
% valid solutions.  As with exercise 3, I'll cover a couple of them.

% Starting by clearing the workspace
clear

% From the previous exercises we have the following code (I'm not going to 
% include the whos, as we now know what format the value will be).
rand_1 = rand(1)*100;
disp(rand_1);
rand_int = round(rand_1);
disp(rand_int);

% Method 1 - Concatenating strings using square brackets
% We can concatenate text strings using square brackets, however, in order 
% to do this, we must convert the numbers to strings first.  If we don't do
% this, we will likely see a  character where the number should be.  

% Use the num2str function to convert a number to text.
rand_1_str = num2str(rand_1);
rand_int_str = num2str(rand_int);

% We now bolt all the string components together as a comma-separated list
% inside square brackets.
disp(['Double value = ',rand_1_str,', integer value = ',rand_int_str]);


% Method 2 - Using sprintf function
% The fprintf function lets us combine text and numbers without the need to
% convert numbers to text first.  The input string (first argument)
% contains format markers that indicate what numbers are going where.  In
% the example here, we add %.4f to tell MATLAB there will be a floating
% point number with 4 decimal places.  Similarly, %i tells it there will be
% an integer.  Finally, the \n part is a newline character, which tells
% MATLAB the next thing to type should be on the next line. This approach 
% is more complicated than method 1, but if you'd like to know more you can 
% type doc fprintf.
fprintf('Double value = %.4f, integer value = %i\n',rand_1,rand_int);
