% Session 1, Exercise 3: Generating random numbers
%
% There are a few different ways to do this, so I'll cover a couple here.
% It doesn't really matter which way you use, as long as you get random
% numbers in the range 0 to 100 (some ways will just run faster than
% others).

% Starting by clearing the workspace
clear

% Method 1 - Using rand and multiplying by 100.
% The rand function will give double-precision values in the range 0-1, so
% we can multiply the output of this by 100 to get our desired outcome.
rand_1 = rand(1)*100;
disp(rand_1);


% Method 2 - Using randi
% A more succinct way to generate the numbers is to use the randi function,
% which will return random integer values in the specified range.  To
% specify a range, include the minimum and maximum values in square
% brackets.
rand_2 = randi([0 100]);
disp(rand_2);
