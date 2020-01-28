% Session 1, Exercise 9: For loops
%
% A for-loop will run a fixed number of times, so we don't need to
% initialise the "state" value.  Otherwise, the format of this is similar
% to that used in exercise 8.

% Starting by clearing the workspace
clear

% This for loop will run for 10 iterations
for i = 1:10
    % On each iteration, we want to run our code from exercise 7.  On each
    % iteration of the loop it will generate a new random number.
    rand_1 = rand(1)*100;
    rand_int = round(rand_1);
    rand_1_str = num2str(rand_1);
    rand_int_str = num2str(rand_int);
    
    % Here, we are generating a new random number
    state = isodd(rand_int);
    state_str = num2str(state);
    
    % The messages are updated to include the iteration number
    i_str = num2str(i);
    if state == 1
        disp(['Iteration ',i_str,', double value = ',rand_1_str,', integer value = ',rand_int_str, ', odd number']);
    else
        disp(['Iteration ',i_str,', double value = ',rand_1_str,', integer value = ',rand_int_str, ', even number']);
    end
end
