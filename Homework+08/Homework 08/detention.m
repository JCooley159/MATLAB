function matches_or_not = detention(fileName, sentence)

studentLines = fopen(fileName, 'r');
line = fgetl(studentLines);
n = 1;
matches = [];

while ischar(line)
    matches(n) = strcmp(line, sentence);
    n = n+1;
    line = fgetl(studentLines);
end

summary = all(matches);
if summary == 1
    matches_or_not = 'Good job. You are free to go!';
else
    matches_or_not = 'Not so fast... Start all over!';
end
fclose(studentLines);
end