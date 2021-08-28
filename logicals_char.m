y = 3>2;
y = true;
z = 3<2;
z = false;
%these are logicals

% = is assignment operator
% == is something that actually equals something else
a = 1 == 1;
a = true;

x = 'My name is Megan';
% Char stores words and letters

%Data Types
%double = 92, 11
%char = 'a', 'b', etc.
%logicals = true or false

% String = vector of multiple characters

test1 = 92;
test2 = 89;
% and etc.
% easier to say:
test_scores = [92 89 60];
% commas are optional

name = 'Megan';
% OR
name = ['M' 'e' 'g' 'a' 'n'];
% but first way is easier

% values from a vector can be pulled out = "indexing"
var1 = test_scores(3);
% positions start at 1
% left = store, right = where it's being pulled from
var2 = name(2);

out = class(a);
% this outputs a STRING of CHAR (outputs the data type)
islogical();
isnumeric();
ischar();
% outputs a LOGICAL

% To combine vectors(concatination):
test_scores = [92 89 60];
extra_scores = [90 100];
grades = [test_scores extra_scores];
% which stores the vector [92 89 60 90 100]
l = length(test_scores);
% this would output '3'
% for vectors, height is always one
% length tells you how many elements are in your vector

% Colon operator is :
% If you want even numbers from 2 to 50 -->
num = 2:2:50;
% where 2 is start, 2 is interval (difference), 50 is end (START STEP STOP)
num1 = 3:7:20;
% which outputs [3 10 17]
out = 10:-1:1;
% which outputs [10 9 8 ... 1]
% Empty vector has nothing in it and has length of 0. (becomes very useful)
% and can be used to delete things from a vector.
num1(2) = [];
% gives you [3 17]

% Linspace function
% output = linspace(start, end, # of points);
out1 = linspace(2,10,5);
% --> [2 4 6 8 10]

% Back to Indexing
b = [10 23 11 9];
variable = b(4);
b(4) = 100;
% now b = [10 23 11 100]
b(2) = [];
%now b = [10 11 100]

grades = [92 86 60 90 100];
% OR
g1 = 92;
g2 = 86;
g3 = 60; 
g4 = 90;
g5 = 100;
% first way is easier
avg = (g1 + g2 + g3 + g4 +g5)./5;
avg2 = mean(grades);
% if 5 pt bonus given -->
grades = grades + 5;
% use "dot operator" when multiplying or dividing
grades = grades.*1.5;
grades = grades.^2;

c = [10 9 27];
d = [0 1 3];
e = [2 10];
result = c + d;
% result = [10 10 30]
result1 = c.*d;
% result1 = [0 9 81]
% Can't do this with vectors of different lengths or else the output will
% be an error saying "Error: Dimension mismatch"

% Logical operations on vectors
out = c == 10;
% creates logical vector telling you where 10 is located
% gives you [ true false false ]
out = c == d;
% gives you [ false true false ]
out = c == e;
% gives you an error

a = 'Hello';
b = 'Hi';
c = 'Me';
d = 'HELLO';
out = a == 'l';
% gives you [false false true true false]
% where is the character in the string
out = a == b;
% gives you an error
out = b == c;
% --> [false false]

% String Compare
out = strcmp(a,b);
% tells you if they're the same string or not
% this would output 'false'
out = strcmp(a,d);
% --> true

% String Tokenizing (sp?)
% "chops up your string"
str = 'Hello my name is Megan';
% [word rest] = strtok(str, (space))
% word is 'Hello' & rest is ' my name is Megan'

out = upper(word);
% --> 'HELLO'
out = lower(word);
% --> 'hello'

out = mod(29, 3);
% outputs remainder when 29 is divided by 3
% --> 2
a = [27 28 29 30];
out = mod(a,3);
% remainder when a is divided by 3
% --> [0 1 2 0]
% useful for finding out the divisability of numbers
a = [2 28 29 30 -2];
out = mod(a,3);
% --> [2 1 2 0 1]
a = mod(-2,5);
% --> 3
b = mod(-21,5);
% --> 4

First = 'Megan';
Last = 'Walden';
out = ['My name is ' First ' ' Last];

% S Print F
out = sprintf('My name is %s%s', First, Last);
% is equivalent to the out variable in line 162.
% '%s%s' is like the blank space from earlier

% Convert between a string and a number
str = '123';
z = double(str) = [49 50 51];
% convert this to a number
% returns vector of ascii values
y = str2num(str);
% --> y = 123
x = num2str(y);
% --> x = '123'
z = num2str(z)