% Session 1, Exercise 4: Converting between data types
%
% For the exercises coming up we want to have random integers rather than
% random double-precision values.  Irrespective of whether you generated
% integers (randi) or decimals (rand) in exercise 3, the values will
% probably be stored as double-precision values.  We want to convert these
% to integer values, so we avoid rounding errors later on.  

% Starting by clearing the workspace
clear

% From the previous exercise we have the following code (I'm going to use
% the "rand" method, but the same will work if you generated your random
% numbers any other way).
rand_1 = rand(1)*100;
disp(rand_1);

% Displaying information about the random number, so we can check what
% format it is.
whos rand_1

% Before we convert to the integer data type, we'll round the values to the
% closest integer value (i.e. at this point, the value is an integer, but
% its data type is still double).
rand_int = round(rand_1);
disp(rand_int);
