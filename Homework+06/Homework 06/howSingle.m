function singleness = howSingle(major, gender, year, pkmn)

% Assigns points based on major
switch major
    case 'Engineer'
        sub1 = 3;
    case 'Business'
        sub1 = 1;
    case 'CS'
        sub1 = 5;
    otherwise
        sub1 = 0;
end

% Assigns the extra points for the pokemon cards based on the major: it
% does this by evaluating the points assigned by major.
if sub1 > 0 && pkmn == true
    extra = 15;
else
    extra = 0;
end

% Assigns points for gender using a switch function
switch gender
    case 'Male'
        sub2 = 1;
    otherwise
        sub2 = 3;
end

total = sub1 + sub2 + year + extra;
% Computes the total and outputs the desired phrase
if total >= 10
    singleness = 'You''re totally HOT, you won''t be single long!';
elseif total >= 5 && total < 10
    singleness = 'You''re not completely undateable, keep trying!';
elseif total < 5
    singleness = 'You might want to renew your Netflix subscription.';
end

end