function nutrition = healthyHabits(recipe,cookbook,ingredients)
% Open the files
cookbookHandle = fopen(cookbook);
[~,~,facts] = xlsopen(ingredients);

line = fgetl(cookbookHandle);
amt = [];
ingred = [];
calorie = 0;
fat = 0;
carbs = 0;
protein = 0;
while ischar(line)
    check = strfind(line,recipe);
    if ~isempty(check)
        line2 = fgetl(cookbookHandle);
        if line2(1) == '-'
            [~, amt] = strtok(line2,' ');
            [amt,ingred] = strtok(amt,' ');
        end
        x = 1;
        for vec = 1:15
            findingred = strfind(facts{x},ingred);
            if ~isempty(findingred)
                calorie = facts{x+1};
                fat = facts{x+2};
                carbs = facts{x+3};
                protein = facts{x+4};
            end
            x = x+5;
        end
    end
    line = fgetl(cookbookHandle);
end


nutrition = {recipe; sprintf('Calories: %s',calorie); sprintf('Total Fat: %s g',...
    fat); sprintf('Carbs: %s g', carbs); sprintf('Protein: %s g', protein)};

% Close the text file
fclose(cookbookHandle);
end