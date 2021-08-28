function results = aragornAndArwen (race, facial_hair, power, age)

% Race
switch race
    case 'elf'
        race_points = 30;
    otherwise
        race_points = 20;
end

% Facial Hair
if strcmp(race,'dwarf') == 1
    hair_points = 5 .* facial_hair;
elseif strcmp(race,'man') == 1 && facial_hair == 2
    hair_points = 20;
elseif strcmp(race,'man') == 1 && facial_hair ~= 2
    hair_points = 10;
elseif strcmp(race,'elf') == 1 && facial_hair == 1
    hair_points = 20;
elseif strcmp(race,'hobbit') == 1 && facial_hair == 1
    hair_points = 20;
else
    hair_points = 0;
end

%Power
power_num = sum(power);
switch power_num
    case {2, 3}
        power_points = 20;
    case 1
        power_points = 10;
    otherwise
        power_points = 0;
end

% Age
if strcmp(race,'elf') == 1 && age >= 50
    age_points = 20;
elseif strcmp(race,'man') == 1 && age > 20 && age < 50
    age_points = 20;
elseif strcmp(race,'hobbit') == 1 && age > 20 && age < 50
    age_points = 20;
elseif strcmp(race,'dwarf') == 1 && age > 50 && age < 125
    age_points = 20;
else
    age_points = 0;
end

% totals the points and then divides by 80 and multiplies by 100 to find
% the percentage. then, outputs the results.
point_percent = ((race_points + hair_points + power_points + age_points) ./ 80) * 100;
if point_percent >= (5000/80)
    results = sprintf('You have a %0.2f%% odds of finding your soul mate in Middle Earth.', point_percent);
else
    results = 'Your only shot at love would be a match made in Mordor.';
end

% overrides the results if race is 'ork' or 'Gollum'
if strcmp(race,'orc') == 1
    results = 'Your only shot at love is a match made in Mordor.';
elseif strcmp(race,'Gollum') == 1
    results = 'You lost your Precious, the One Ring. Please, try again later.';
end


end