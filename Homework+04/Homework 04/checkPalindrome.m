function palindromeOrNah = checkPalindrome(in_string)

spaces = in_string == ' ';
in_string(spaces) = [];
% Removes the spaces from the original string by making a logical index
% vector of the locations of the spaces.
back_str = fliplr(in_string);
compared = strcmpi(in_string, back_str);
% Flips the original string and compares the two.

palindromeOrNah = logical(compared);
% Makes sure that the output value is of class "logical."
end