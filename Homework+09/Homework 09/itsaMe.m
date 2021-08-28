function [congrats] = itsaMe(prix_name)

[num, ~, raw] = xlsread(prix_name);

sum = zeros(length(num), 1);
oldRaw = raw;
cutRaw = raw(2:end, 2:end);
[m, n] = size(oldRaw);

for i = 2:n-1
    cutRaw = sortrows(cutRaw, i);
    sum = sum + cell2mat(cutRaw(1:end,1));
end

names = cutRaw(1:end, end);
[~, indices] = sort(sum, 'descend');
names = names(indices);

for j = 2:m
    oldRaw{j, n+1} = names{j-1,1};
end
oldRaw{1,end} = 'Finish';

newName = [prix_name(1:end-4), '_Results.xls'];
xlswrite(newName, oldRaw);

[max_points, index] = max(sum);
high_points = max_points;
winner = cutRaw{index,end};
congrats = sprintf('Congratulations! %s wins with a total of %d points!', winner, high_points);

end