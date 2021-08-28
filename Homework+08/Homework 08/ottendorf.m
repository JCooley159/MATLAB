function [secretMessage] = ottendorf(references, cipher)

reference = 0;
secretMessage = '';
ciphers = 0;
c_handle = fopen(cipher);
c_line = fgetl(c_handle);
while c_line ~= '0-0-0-0'
    if strcmp(c_line, '')
        secretMessage = [secretMessage, ' '];
    elseif strcmp(c_line, '.')
        secretMessage = [secretMessage, '.'];
    end
    [ref_num, c_line] = strtok(c_line, '-');
    c_line = c_line(2:end);
    [ref_line_NUM, c_line] = strtok(c_line, '-');
    ref_line_NUM = str2num(ref_line_NUM)
    c_line = c_line(2:end);
    [ref_word, c_line] = strtok(c_line, '-');
    ref_word = str2num(ref_word)
    ref_letter = c_line(2:end);
    ref_letter = str2num(ref_letter)
    
    % Creates the reference to open and opens it to read.
    ref_name = [references, '_', ref_num, '.txt'];
    ref_handle = fopen(ref_name, 'r');
    ref_line = fgetl(ref_handle)
    while ref_line ~= ref_line_NUM
        ref_line = fgetl(ref_handle)
    end
    while 
    
    fclose(ref_handle);
    
fclose(cipher);

end