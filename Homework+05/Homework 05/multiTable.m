function mult_table = multiTable(n)


horiz = [1:1:n];
vert = horiz';
mult_table = vert * horiz;
%   uses linear algebra to multiply the vectors

end