function [winner] = itsaMe(filename)

[name,ext] = strtok(filename,'.');
newName = [name '_Results' ext];
[num,txt,raw] = xlsread(filename);

points = num(:,1);
racerData = raw(2:end,3:end);
scores = zeros(length(points),1);
alphaRacers = sort(racerData(:,1));
[row,col] = size(racerData);

for i=1:col
    race = racerData(:,i);
    [~,ord] = sort(race);
    scores = scores + points(ord);
end

[ordScores,index] = sort(scores,'descend');
results = alphaRacers(index);
new = [{'Finish'}; results];
xlswrite(newName,[raw new]);
winner = sprintf('Congratulations! %s wins with a total of %d points!',...
         results{1},ordScores(1));
end