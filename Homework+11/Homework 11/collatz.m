function [number, r_steps] = collatz(int)
 % Initializes the steps and calls the helper function.
r_steps = 0;
[number, r_steps] = helper(int, r_steps);
end

function [number, r_steps] = helper(int, r_steps)
% If the input is already less than 2, then it just outputs it.
if int < 2
    number = int;
    r_steps = 0;
% If not, it modifies the number according to the algorithm and check to
% see if that's less than two. If not, it recurses through until it is.
else
    if mod(int, 2) == 0
        newint = int ./ 2;
    elseif mod(int, 2) == 1
        newint = (3 .* int) + 1;
    end
    
    if newint < 2
        number = newint;
        r_steps = r_steps + 1;
    else
        [number, r_steps] = helper(newint, r_steps + 1);
    end
end

end