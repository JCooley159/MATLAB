function max_growth = theRatio(girls, tot_stu, years)

ratio = girls ./ tot_stu;
change = ratio(2:1:end) - ratio(1:1:end-1);
% Gets the ratio of girls to total students, and then fids the change
% between years.
[~, max_index] = max(change);
% Retrieves the indices of the greatest change
max_growth = [years(max_index), years(max_index + 1)];
% Gives back a vector with the two years.
end

