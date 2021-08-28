function [avg_arr, broken_loc] = tempCheck(month1, month2, month3)

pre_avg = (month1 + month2 + month3) ./ 3;
%   Averages the three months, but doesn't find anything the same.

test1 = month1 == month2;
test2 = month1 == month3;
broken_loc = test1 == 1 & test2 == 1;
%   Gives a mask of where the temps stay the same throughout the months.

avg_arr = pre_avg;
avg_arr(broken_loc) = 0;
%   Replaces variables that stay the same with a '0'.

end