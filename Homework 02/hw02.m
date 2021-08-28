%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <your name>
% T-square ID  : <your t-square ID. Example: gburdell3>
% GT Email     : <your GT email address>
% Homework     : <homework assignment number/original or resubmission>
% Course       : CS1371
% Section      : <Your Section>
% Collaboration: <place here one of the following:
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%                 OR
%                 "I worked on this homework with <give the names of the
%                  people you worked with>, used solutions or partial
%                  solutions provided by <name the people or other
%                  sources>, and referred to <cite any texts, web sites, or
%                  other materials not provided as course materials for CS
%                  1371.>"
%
%
% Files provided with this homework:
%   ABCs_functions.m
%   ABCs_hw02_pretest.m
%   HW2 Drill Problems.pdf
%   dormTape_soln.p
%   f_soln.p
%   hw02.m
%   quad_soln.p
%
%
% Files to submit:
%   hw02.m
%   ABCs_functions.m
%   quad.m
%   f.m
%   dormTape.m
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
% Part of this homework is an m-file called "ABCs_function". Open these
% files in MATLAB and complete it according to the directions contained
% within. 
%
% Files to Complete: 
%       - ABCs_functions.m
% ABCs File Testing:
%  >> ABCs_hw02_pretest
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW2 Drill Problems.pdf",
% and included within are instructions for 5 drill problems that cover the
% following major topic(s):
%	Functions
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
% Drill Problem 1: quad
%
%   [pos1 neg1] = quad(-9, 0, 9)
%       => pos1 = -1
%          neg1 = 1
%
%   [pos2, neg2] = quad(3, -12, 1)
%       => pos2 = 3.9149
%          neg2 = 0.0851
%
%   [pos3, neg3] = quad(10, -5, -10)
%       => pos3 = 1.2808
%          neg3 = -0.7808
%
%
%--------------------------------------------------------------------------
% Drill Problem 2: f
%
%   y1 = f(0)
%       => y1 = -15.8427
%
%   y2 = f(1)
%       => y2 = -5.0726
%
%   y3 = f(4)
%       => y3 = 4.9360e+04
%
%
%--------------------------------------------------------------------------
% Drill Problem 3: dormTape
%
%   cost1 = dormTape(6, 1/3, 1/3, 1/3, 2)
%       => cost1 = 12.93
%          %%it's fine if your matlab displays 12.9300%%
%
%   cost2 = dormTape(50, .25, .25, .5, 2)
%       => cost2 = 116.35
%          %%see above note: 116.3500 is fine%%
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
