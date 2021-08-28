function [final] = r_nFib(num, int) %Helper function to concatenate values of fib sequence
    final = [];
    while int > 0
        var = r(num, int);
        final = [var final];
        int = int - 1;
    end
end

function [outFib] = r(num, int) %Used to obtain each fib sequence value
    if num == 0 && int == 2
        outFib = 1;
    elseif int == 1 || int == 2
       outFib = num;
    else
       outFib = r(num, int-1) + r(num, int-2);
    end 
end 