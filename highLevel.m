%{
Cell arrays -  a 'collection class' - meant for organization of big data

ca = {'myString', [1 2 3], [true false true]};
ca2 = {'myString', {[1 2 3]}, [true false true]};
ca3 = {'myString', {[1 2 3]}, {[true false true], {ones(3),true(4),'Hello'}}};

Technique to interpret cells
- look for the commas - they tell you the number of cells in an array
- in the command window - check for [] or '' - that means it still in its
cell

The contents vs. the cell
Parentheses – round claws – to hold objects – the claw! – 
used for finding objects all of the same class
Curly braces – jagged {} – treasure chest inside another treasure chest, 
clamps to put a shell over

The sort() function can take an input of a cell array of strings, and
will sort the strings alphabetically. - ONLY strings

The strcmp() function can take an input of cells and check for matches,
outputs a logical array -  cells can be replaced by cells just how numbers
can be replaced in vectors

Doubles and Cells 
A cell array to a vector: [ca{:}]
cell2mat
num2cell

High level IO using cell arrays for Excel
[num, txt,raw] = xlsread('sample.xlsx');
num - double array - largest continous rectange
    empty and strings will become NaN - not a number, but class double
txt - cell array of strings only
    - everything not a string becomes ''
raw - combination of both strings, doubles, and logicals 
    - empty values will be NaN
xlswrite('filename',arr);


Excel files will have a cell for each item stored in a excel cell
    usually only single numerical values, strings, and logicals
    most likely no cells within cells
    no vectors or arrays inside a single cell

Data manipulation - 

%}
