function passOrNah = checkPassword(pass_input)

char8 = length(pass_input) >= 8;
% makes sure it has >= 8 characters

num = any(pass_input >= '0' & pass_input <= '9');
upLetter = any(pass_input >= 'A' & pass_input <= 'Z');
lowLetter = any(pass_input >= 'a' & pass_input <= 'z');
symbol = any(pass_input >= ' ' & pass_input <= '/');
% makes sure the input has a number, symbol, uppercase letter, and
%          lowercase letter.

lowpass = lower(pass_input);
passw = isempty(strfind(lowpass, 'password'));
% Converts everything to lowercase b/c strfind is case-sensitive, then
%          checks for the string 'password'

passOrNah = char8 == 1 & num == 1 & upLetter == 1 & lowLetter == 1 & ...
    symbol == 1 & passw == 1;
end