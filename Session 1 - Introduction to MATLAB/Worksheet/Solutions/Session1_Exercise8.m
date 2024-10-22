% Session 1, Exercise 8: While loops
%
% Here we put the code inside a while loop which executes until an even
% number is generated.  Since the while loop will only run while "state" is
% true (1). we initialise the value to this, so we can run the loop.

% Starting by clearing the workspace
clear

% Assigning a starting value to "state" of 1.
state = 1;

% The while loop will run as long as state is 1
while state == 1
    % On each iteration, we want to run our code from exercise 7.  On each
    % iteration of the loop it will generate a new random number.
    rand_1 = rand(1)*100;
    rand_int = round(rand_1);
    rand_1_str = num2str(rand_1);
    rand_int_str = num2str(rand_int);
    
    % Here, we are generating a new random number
    state = isodd(rand_int);
    state_str = num2str(state);
    
    if state == 1
        disp(['Double value = ',rand_1_str,', integer value = ',rand_int_str, ', odd number']);
    else
        disp(['Double value = ',rand_1_str,', integer value = ',rand_int_str, ', even number']);
    end
end
