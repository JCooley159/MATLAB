function [fibSequence] = nFib(x, N)
% Initializes the output variable    
fibSequence = [];
    for i = (1:N)
        % Starts out the sequence if the given value is 0.
        if (x == 0 && i == 1)
            fibSequence = [fibSequence 0] 
        elseif (x == 0 && i == 2)
            fibSequence = [fibSequence 1]
        else
            % Creates the first two numbers in the sequence
            if (i==1 || i ==2)
                fibSequence = [fibSequence x]
            % Adds the two previous terms until the desired length
            else
                fibSequence = [fibSequence 0]
                fibSequence(i) = fibSequence(i-1) + fibSequence(i-2)
            end
        end
    end
end