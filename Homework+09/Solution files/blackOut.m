    function blackOut(filename,classifiedWords)
fh = fopen(filename);
line = fgets(fh);

newFileName = [strtok(filename,'.'), '_CENSORED.txt'];
fhNew = fopen(newFileName,'w');

while ischar(line)
    for i = 1:length(classifiedWords)
        mask = censor(lower(line),lower(classifiedWords{i}));
        line(mask) = '*';
    end
    fprintf(fhNew,'%s',line);
    line = fgets(fh);
end
fclose(fh);
fclose(fhNew);
end

function censorMask = censor(line,badWord)
len = length(badWord)-1;
startLoc = strfind(line,badWord);
censorMask(1:length(line)) = false;
for i = 1:length(startLoc)
    censorMask(startLoc(i):startLoc(i)+len) = true;
end
censorMask(line == ' ') = false;
end
