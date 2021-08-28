function acronym = tooManyTLAs(inFile)

% Initializes the acronym variable and opens the file
handle = fopen(inFile, 'r');
acronym = '';

% Moves the handle down two places to ignore the first two lines
line = fgetl(handle);
line = fgetl(handle);

% Uses the while ischar(line) loop to add each first character to the 
% acronym string.
while ischar(line)
    acronym = [acronym, line(1)];
    line = fgetl(handle);
end
% Closes the file handle
fclose(handle);
end