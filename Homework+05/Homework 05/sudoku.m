function your_a_jeenyuss = sudoku(nine_by_nine)

%Columns
col1 = sort(nine_by_nine(1:9)) == 1:9;
col2 = sort(nine_by_nine(10:18)) == 1:9;
col3 = sort(nine_by_nine(19:27)) == 1:9;
col4 = sort(nine_by_nine(28:36)) == 1:9;
col5 = sort(nine_by_nine(37:45)) == 1:9;
col6 = sort(nine_by_nine(46:54)) == 1:9;
col7 = sort(nine_by_nine(55:63)) == 1:9;
col8 = sort(nine_by_nine(64:72)) == 1:9;
col9 = sort(nine_by_nine(73:81)) == 1:9;
col_check = all([col1, col2, col3, col4, col5, col6, col7, col8, col9]) == 1;
%   This is not okay.


%Rows
row1 = sort(nine_by_nine(1:9:73)) == 1:9;
row2 = sort(nine_by_nine(2:9:74)) == 1:9;
row3 = sort(nine_by_nine(3:9:75)) == 1:9;
row4 = sort(nine_by_nine(4:9:76)) == 1:9;
row5 = sort(nine_by_nine(5:9:77)) == 1:9;
row6 = sort(nine_by_nine(6:9:78)) == 1:9;
row7 = sort(nine_by_nine(7:9:79)) == 1:9;
row8 = sort(nine_by_nine(8:9:80)) == 1:9;
row9 = sort(nine_by_nine(9:9:81)) == 1:9;
row_check = all([row1, row2, row3, row4, row5, row6, row7, row8, row9]) == 1;
%   Like, seriously, staaaaaaaahhhp!!!

%Boxes
box1 = sort([nine_by_nine(1:3), nine_by_nine(10:12), nine_by_nine(19:21)]) == 1:9;
box2 = sort([nine_by_nine(28:30), nine_by_nine(37:39), nine_by_nine(46:48)]) == 1:9;
box3 = sort([nine_by_nine(55:57), nine_by_nine(64:66), nine_by_nine(73:75)]) == 1:9;
box4 = sort([nine_by_nine(4:6), nine_by_nine(13:15), nine_by_nine(22:24)]) == 1:9;
box5 = sort([nine_by_nine(31:33), nine_by_nine(40:42), nine_by_nine(49:51)]) == 1:9;
box6 = sort([nine_by_nine(58:60), nine_by_nine(67:69), nine_by_nine(76:78)]) == 1:9;
box7 = sort([nine_by_nine(7:9), nine_by_nine(16:18), nine_by_nine(25:27)]) == 1:9;
box8 = sort([nine_by_nine(34:36), nine_by_nine(43:45), nine_by_nine(52:54)]) == 1:9;
box9 = sort([nine_by_nine(61:63), nine_by_nine(70:72), nine_by_nine(79:81)]) == 1:9;
box_check = all([box1, box2, box3, box4, box5, box6, box7, box8, box9]) == 1;
%   You know what, I SERIOUSLY hate whomever had the idea to make this a problem.


%Final Check - puts everything together and checks for everything to be
%               true
your_a_jeenyuss = all([col_check, row_check, box_check]) == 1;
end