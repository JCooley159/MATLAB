function [hip_points] = fauxHipster (convo, words)
% Open the files
convo_handle = fopen(convo);
words_handle = fopen(words);

w_Points = 0;
h_Points = 0;
% Create a while loop to check each line of the 'words to check' file and
% then compare each line to the conversation. (not case sensitive)
% While loop must also include points given for every occurrence of a
% hashtag followed by non-space character.
% Overlapping points count.
convo_line = lower(fgetl(convo_handle));
words_line = 'a';
fclose(convo_handle);
while ischar(words_line)
    words_line = lower(fgetl(words_handle));
    convo_handle = fopen(convo);
    convo_line = lower(fgetl(convo_handle));
    if words_line~= -1
        while ischar(convo_line)
            word_match = strfind(convo_line, words_line);
                if ~isempty(word_match)
                w_Points = w_Points + 1;
                end
            convo_line = lower(fgetl(convo_handle));
        end
    end
        fclose(convo_handle);
        convo_handle = fopen(convo);
end
convo_line = fgetl(convo_handle);
while ischar(convo_line)
        hash_match  = strfind(convo_line,'#');
        if ~isempty(hash_match)
            if ~isspace(convo_line(hash_match + 1))
               h_Points = h_Points + length(hash_match);
            end
        end
        convo_line = fgetl(convo_handle);
end
% Adds the word & hashtag points together
hip_points = w_Points + h_Points;
% Closes the files
fclose(convo_handle);
fclose(words_handle);
end