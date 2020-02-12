% Session 1, Exercise 7: Conditional statements
%
% We now use conditional statements to display an appropriate message based
% on the output from the isodd function.  One way to do this is to have two
% separate statements which are printed depending on the outcome of this 
% test.

% Starting by clearing the workspace
clear

% From the previous exercises we have the following code.
rand_1 = rand(1)*100;
rand_int = round(rand_1);
rand_1_str = num2str(rand_1);
rand_int_str = num2str(rand_int);
state = isodd(rand_int);
state_str = num2str(state);

% This conditional statement checks if the value of "state" is 1 or 0.  If
% its 1 we know the number was odd and it prints an appropriate message.
% Otherwise, we know the value must have been even and it prints a message
% saying that.
if state == 1
    % Display the following if the value of "state" is odd
    disp(['Double value = ',rand_1_str,', integer value = ',rand_int_str, ', odd number']);
else 
    % Display the following if the value of "state" is even
    disp(['Double value = ',rand_1_str,', integer value = ',rand_int_str, ', even number']);
end
