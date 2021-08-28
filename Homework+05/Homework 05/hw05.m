%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Jeremy Cooley
% T-square ID  : jcooley6
% GT Email     : jcooley6@gmail.com
% Homework     : HW05
% Course       : CS1371
% Section      : D05
% Collaboration: "I worked on this homework with Megan Walden for guidance 
%                  and clarifying problem details, 
%                  but did not use solutions or partial solutions or 
%                  refer to any texts, web sites, or other materials not 
%                  provided as course materials for CS 1371."
%
%
% Files provided with this homework:  
%   HW05 Drill Problems.pdf
%   hw05.m
%   ABCs_arrays.m
%   ABCs_masking.m
%   ABCs_hw05_pretest.p
%   replaceNaN_soln.p
%   tempCheck_soln.p
%   multiTable_soln.p
%   runBabyRun_soln.p
%   sudoku_soln.p
%   GDTrials.mat
%   arr1.mat
%   arr2.mat
%   arr3.mat
%
% Files to submit:
%   hw05.m
%   ABCs_arrays.m
%   ABCs_masking.m
%   replaceNaN.m
%   tempCheck.m
%   multiTable.m
%   runBabyRun.m
%   sudoku.m
%
%
% Instructions:
%   1) Follow the directions for each problem very carefully or you will
%   lose points.
%   2) Make sure you name functions exactly as described in the problems or
%   you will not receive credit.
%   3) Read the announcements! Any clarifications and/or updates will be
%   announced on T-Square. Check the T-Square announcements at least once
%   a day.
%   4) You should not use any of the following functions in any file that 
%   you submit to T-Square:
%       a) clear
%       b) clc
%       c) solve
%       d) input
%       e) disp
%       f) close all
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%==========================================================================
% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework are two m-files called "ABCs_masking" and 
% "ABCs_arrays". Open these files in MATLAB and complete it according to 
% the directions contained within. 
%
% Files to Complete: 
%       - ABCs_arrays.m
%       - ABCs_masking.m
% ABCs File Testing:
%  >> ABCs_hw05_pretest
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW05 Drill Problems.pdf",
% and included within are instructions for 5 drill problems that cover the
% following major topic(s):
%	Arrays
%   Masking
%
% Follow the directions carefully to write code to complete the drill
% problems as described. Make sure files names as well as function headers
% are written exactly as described in the problem text. If your function
% headers are not written as specified, then you will recieve an automatic
% zero for the problem.
%
%==========================================================================
% PART 3. Testing Your Code
%--------------------------------------------------------------------------
%
% You may use the following test cases for each problem to test your code.
% The function call with the test-inputs is shown in the first line of each
% test case, and the correct outputs are then displayed in subsequent lines
% for each test case.
%
%--------------------------------------------------------------------------
% Drill Problem #1: replaceNaN
%
%   replaced1 = replaceNaN([NaN, 0, NaN; 0, NaN, 0; NaN, 0, NaN], magic(3))
%       replaced1 => [8 0 6;
%                     0 5 0;
%                     4 0 2]
%
%   replaced2 = replaceNaN([NaN 3 7 1; 1 NaN 7 1; 1 3 NaN 1; 1 3 7 NaN],...
%               [1 2 4 6; 8 3 9 0; 4 5 7 2; 0 3 1 1])
%       replaced2 => [1 3 7 1;
%                     1 3 7 1;
%                     1 3 7 1;
%                     1 3 7 1]
%
%  replaced3 = replaceNaN([1 NaN 2 3 5; 8 13 NaN NaN 55; 89 NaN 233 ...
%              NaN NaN], [100 1 53 19 70; 8 96 21 34 1678; 722 144 41 ...
%              377 610])
%       replaced3 => [ 1   1   2   3   5;
%                      8  13  21  34  55;
%                     89 144 233 377 610]
%
%--------------------------------------------------------------------------
% Drill Problem #2: tempCheck
%
%   load('GDTrials.mat')
%
%	[averages1, broke1] = tempCheck(trialOneTest1,trialOneTest2,trialOneTest3)
%       averages1 => stored in variable ans11
%       broke1 => stored in variable ans12 (must be class logical)
%
%   [averages2, broke2] = tempCheck(trialTwoTest1,trialTwoTest2,trialTwoTest3)
%       averages2 => stored in variable ans21
%       broke2 => stored in variable ans22 (must be class logical)
%
%--------------------------------------------------------------------------
%   Drill Problem #3: multiTable
%
%       table1 = multiTable(4)
%           table1 => [1     2     3     4;
%                      2     4     6     8;
%                      3     6     9    12;
%                      4     8    12    16]
%
%
%       table2 = multiTable(9)
%           table2 => [1     2     3     4     5     6     7     8     9;
%                      2     4     6     8    10    12    14    16    18;
%                      3     6     9    12    15    18    21    24    27;
%                      4     8    12    16    20    24    28    32    36;
%                      5    10    15    20    25    30    35    40    45;
%                      6    12    18    24    30    36    42    48    54;
%                      7    14    21    28    35    42    49    56    63;
%                      8    16    24    32    40    48    56    64    72;
%                      9    18    27    36    45    54    63    72    81]
%
%
%--------------------------------------------------------------------------
% Drill Problem #4: runBabyRun
%
%   [imp1 prep1 miles1] = runBabyRun(3.4, [2.1 3.4 1.1 5.3 3.7 1.5 .5; ...
%                      4.5 6.7 9.2 4.3 1.2 7.7 4.4; 6.7 13.6 8.7 3.5 ...
%                      6.5 8.3 5.4; 9 9.7 6.5 4.5 0 3.9 2.3])
%       imp1 => 6.9
%       prep1 => true
%       miles1 => [17.6 38 52.7 35.9]
%
%   [imp2 prep2 miles2] = runBabyRun(12.4, [2.7 7.4 4.1 6.3 3.5 1.2 2.3;...
%                      5.5 3.7 2.2 7.3 3.2 4.7 5.4; 4.7 10.4 2.7 5.5 9.5...
%                      6.3 5.0; 4.9 11.7 6.1 2.5 5.9 3.4 1.8])
%       imp2 => 6.8
%       prep2 => false
%       miles2 => [27.5 32 44.1 36.3]
%
%
%   [imp3 prep3 miles3] = runBabyRun(4.4, [1.7 1.4 2.1 1.3 3.5 2.2 1.4; ...
%                      2.5 3.3 2.6 3.3 3.7 1.7 4.4; 4.2 3.4 4.7 3.5 1.5 ...
%                      4.3 2.0; 3.9 2.7 4.1 2.5 1.9 3.7 2.8])
%       imp3 => 2.8
%       prep3 => true
%       miles3 => [13.6 21.5 23.6 21.6]
%
%--------------------------------------------------------------------------
% Drill Problem #5: sudoku
%
%   load('arr1.mat')
%   log1 = sudoku(arr1)
%       log1 => true
%      
%   load('arr2.mat')
%   log2 = sudoku(arr2)
%       log2 => true
%
%   load('arr3.mat')
%   log3 = sudoku(arr3)
%       log1 => false
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
