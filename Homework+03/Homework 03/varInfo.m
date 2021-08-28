function [out_str] = varInfo(num_or_string)
vclass = class(num_or_string); 
% Identifies the class of the input

str1 = num2str(num_or_string); 
% Converts the input to a string if it is not already one

pre_vec = [sprintf('''This variable is of class %s%s', vclass), ' ', sprintf('and has a value of ''''%s%s', str1), '''''.'''];
% Concatenates the two elements of the string with spaces in between them
% and a period and apostrophe afterward.
end