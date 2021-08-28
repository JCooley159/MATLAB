function out = ugaFunc(string, value)

% Formats the beginning of the function and finds the variable, as well as
% gets rid of any equals, spaces, or parentheses
[funcName, string] = strtok(string, '(');
string = string(2:end);
[varName, string] = strtok(string, ')');
spaces = string == ' ';
string(spaces) = [];
string = string(2:end);
parens = string == '(' | string == ')';
string(parens) = [];

% Replaces the varible(s) with a string form of the value.
value = num2str(value);
string_rep = strrep(string, varName, value);

%[first_num, string_rep] = strtok(string_rep, '+') | strtok(string_rep, '-') | strtok(string_rep, '*') | strtok(string_rep, '/') | strtok(string_rep, '^');
%runningtotal = first_num;
%for place = 1:(length(string_rep));
    
%for place = 1:(length(string_rep));

operators = string_rep == '+' | string_rep == '-' | string_rep == '*' | string_rep == '/' | string_rep == '^';

running = 0;
if str_rep(1) == '-';
    running = 0 - (str2num(str_rep(2));
else
    running = str2num(str_rep(1));


end