function [] = blackOut (file_name, ca_words)

% Opens the text file and gets the first line
file_handle = fopen(file_name, 'r');
line = fgetl(file_handle);
% Renames the file and creates the new file.
censored_name = [file_name(1:end-4), '_CENSORED.txt'];
censored_handle = fopen(censored_name, 'w');

% Reads each line of text and searches for each word
while ischar(line)
    for i = 1:length(ca_words)
        bad_word = ca_words{i};
        line_comp = lower(line);
        if strfind(line_comp, bad_word)
            indices = strfind(line_comp, bad_word);
            for j = 1:length(indices)
                word_to_censor = line((indices(j)):(indices(j)+length(bad_word)));
                word_to_censor(word_to_censor ~= ' ') = '*';
                censored_word = word_to_censor;
                line((indices(j)):(indices(j)+length(bad_word))) = censored_word;
                censored_line = line;
                censored_handle = fopen(censored_name, 'w');
                fprintf(censored_handle, '%s\n', censored_line);
                fclose(censored_handle);
            end
        end
    end
    line = fgetl(file_handle);
end
fclose(file_handle);
fclose(censored_handle);

end