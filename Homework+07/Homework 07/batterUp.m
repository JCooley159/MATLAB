function [totals, avg, howGood] = batterUp (outcomes)
% Finds the sums of all of the different types of outcomes
hR = sum(outcomes == 10);
rH = sum(outcomes == 5);
fB = sum(outcomes == 1);
O = sum(outcomes == 0);
S_M = sum(isnan(outcomes));
length1 = length(outcomes);

% puts them all into a vector for the output
totals = [hR rH fB O S_M];

% finds the average for everything
avg = (10*(hR)+5*(rH)+1*(fB))./(hR+rH+fB+O+S_M);

% outputs the desired statement
if avg >= 5
    howGood = 'You had a great round!';
elseif avg >= 2 && avg < 5
    howGood = 'You had an ok round.';
else
    howGood = 'Not your best round...';
end

end