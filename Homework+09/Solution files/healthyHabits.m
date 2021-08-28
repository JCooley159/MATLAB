% DIFFICULTY LEVEL 3

% given cookbook.txt and pantry.xlsx, output nutrition facts of given
% recipe as a cell array

% guarantees
% - all food in the pantry will have unique names
function out = healthyHabits(in,cookbook,pantry)

% open files
fh = fopen(cookbook);
[~,~,raw] = xlsread(pantry);

% find recipe in cookbook using while loop
line = fgetl(fh);

while ~strcmp(line, in)
    line = fgetl(fh);
end

% calculate nutrition facts
line = fgetl(fh);
nutritionvec = [0 0 0 0];
while ~isempty(line) && ischar(line)
    % obtain quantity
    quant = str2num(line(line >= '0' & line <= '9'));
    
    % obtain food
    check = false;
    i = 0;
    while ~check
        i = i + 1;
        if ~isempty(strfind(line,raw{i,1}))
            check = true;
        end
    end
    % sum
    nutritionvec = nutritionvec + quant .* cell2mat(raw(i,2:end));
    line = fgetl(fh);
end

% Format Output, Close files
fclose(fh);

cals = sprintf('Calories: %d', nutritionvec(1));
fats = sprintf('Total Fat: %d g', nutritionvec(2));
carbs = sprintf('Carbs: %d g', nutritionvec(3));
prot = sprintf('Protein: %d g', nutritionvec(4));

out = {in;cals;fats;carbs;prot};
end