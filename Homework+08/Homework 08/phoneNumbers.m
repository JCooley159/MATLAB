function total_numbs = phoneNumbers (fileName)

% Opens the file and creats a new file with an updated name, as well as
% initializes the counting variable for when the phone number is valid.
handle = fopen(fileName);
line = fgetl(handle);
[updated,~] = strtok(fileName,'.');
newFileName = strcat(updated,'_updated.txt');
updatedFile = fopen(newFileName, 'w');
n = 0;

while ischar(line)
    
    [~, number] = strtok(line, '(');
    % Goes thru each line of the file and compares the original to a
    % comparison if the comparison matches all of the criteria.
    numb_comp = number;
    numb_comp(strfind(numb_comp,'(')) = '';
    numb_comp(strfind(numb_comp,'-')) = '';
    numb_comp(strfind(numb_comp,')')) = '';
    if all(numb_comp >= '0' & numb_comp <= '9')
        if length(numb_comp) == 10;
            numb_comp = strcat('(',numb_comp(1:3),'-',numb_comp(4:6),'-',numb_comp(7:end),')');
            if strcmp(number,numb_comp)
                n = n + 1;
                fprintf(updatedFile, '%s\n', line);
            end
        end
    end
    % Moves to the next line.
    line = fgetl(handle);
end

% closes both files and outputs the counting variable.
total_numbs = n;
fclose(handle);
fclose(updatedFile);
end