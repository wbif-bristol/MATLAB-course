% Session 1, Exercise 6: Creating function files

% This function file is created as part of exercise 6.  The function here
% tests whether the input value ("value_to_test") is odd or even.  The
% function returns a value of 1 if the number is odd and 0 if it's even.

function remainder_value = isodd(value_to_test)
% The rem function gives the remainder after a division.  Here, we're
% calculating the remainder of the division of value_to_test by 2.  As
% such, if value_to_test is odd, the remainder will be 1, otherwise it must
% be 0 (i.e. and even number).
remainder_value = rem(value_to_test,2);
