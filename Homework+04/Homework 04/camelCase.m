function camelized = camelCase(phrase)

phrase = lower(phrase);
% converts everything to lowercase first
phrase((strfind(phrase, ' '))+1) = upper(phrase((strfind(phrase, ' '))+1));
% capitolizes every letter after a space
phrase(strfind(phrase, ' ')) = [];
% removes all spaces
camelized = phrase;
end