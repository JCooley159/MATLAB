function [encoded] = caesarSalad(word, shift)
minus97 = word - 97;
% Turns the word into a set of ASCII numbers as well as subtracting the
% value for 'a' so that we can get a base alphabet from 0 to 25.

shifted = minus97 + shift;
divided = mod(shifted, 26);
% Shifts the numbers and *then* mods it to get the remainder, which
% indicates the place in the alphabet.

plus97 = divided + 97;
encoded = char(plus97);
% Adds 97 back in to get the ASCII letters out, and then converts the ASCII
% numbers back into a string of letters.
end