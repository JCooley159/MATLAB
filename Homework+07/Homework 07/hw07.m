%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Jeremy Cooley
% T-square ID  : jcooley6
% GT Email     : jcooley6@gatech.edu
% Homework     : HW 07
% Course       : CS1371
% Section      : D05
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%
%
% Files provided with this homework:  
%   ABCs_iteration.m
%   ABCs_hw07_pretest.p
%   batterUp_soln.p
%   datHookshotDoe_soln.p
%   findSS_soln.p
%   HW07 Drill Problems.pdf
%   hw07.m
%   nFib_soln.p
%   ugaFunc_soln.p
%   findSS_testCases.mat
%   zelda1.mat
%   zelda2.mat
%   zelda3.mat
%
% Files to submit:
%   ABCs_iteration.m
%   batterUp.m
%   datHookshotDoe.m
%   findSS.m
%   hw07.m
%   nFib.m
%   ugaFunc.m
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
% Part of this homework is an m-file called "ABCs_iteration". Open these
% files in MATLAB and complete it according to the directions contained
% within. 
%
% Files to Complete: 
%       - ABCs_iteration.m
% ABCs File Testing:
%  >> ABCs_hw07_pretest
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW07 Drill Problems.pdf",
% and included within are instructions for 5 drill problems that cover the
% following major topic(s):
%	iteration
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
% Drill Problem #1: batterUp
%
%   [outcomes1,avgScore1,result1] = batterUp([5,5,0,NaN,1,10,1,1,0,1])
%       outcomes1 => [1,2,4,2,1]
%       avgScore1 => 2.4000
%       result1   => 'You had an ok round.'
%      
%   [outcomes2,avgScore2,result2] = batterUp([1,1,0,0,5,NaN,NaN,NaN,10,0])
%       outcomes1 => [1,1,2,3,3]
%       avgScore1 => 1.7000
%       result1   => 'Not your best round...'
%
%   [outcomes3,avgScore3,result3] = batterUp([10,10,0,10,5,NaN,10,5,10,5])
%       outcomes1 => [5,3,0,1,1]
%       avgScore1 => 6.5000
%       result1   => 'You had a great round!'
%
%--------------------------------------------------------------------------
%   Drill Problem #2: findSS
%
%   load findSS_testCases.mat
%   
%   [SS1, percent1] = findSS(test1)
%       SS1 => 3.4900
%       percent1 => 60
%
%   [SS2, percent2] = findSS(test2)
%       SS2 => 35.0500
%       percent2 => 40
%
%	[SS3, percent3] = findSS(test3)
%       SS3 => 10.0100
%       percent3 => 40
%
%--------------------------------------------------------------------------
%   Drill Problem #3: nFib
%
%   fibseq1 = nFib(4,10)
%       fibseq1 => [4 4 8 12 20 32 52 84 136 220]
%         
%   fibseq2 = nFib(0,6)
%       fibseq2 => [0 1 1 2 3 5]
%
%   fibseq3 = nFib(3,23)
%       fibseq3 => [3 3 6 9 15 24 39 63 102 165 267 432 699 1131 1830...
%                  2961 4791 7752 12543 20295 32838 53133 85971]
%
%--------------------------------------------------------------------------
% Drill Problem #4: ugaFunc
%
%   [val1] = ugaFunc('f(x) = 2*x^3', 5)
%       val1   => 1000
%      
%   [val2] = ugaFunc('veloc(pos) = 2 / pos ^ 2 - 3', 0.5)
%       val2   => 13
%
%   [val3] = ugaFunc('f(var_name) = 4 * (3 / var_name)^var_name-10*var_name',3.14)
%       val3   => 180.0461
%
%--------------------------------------------------------------------------
% Drill Problem #5: datHookshotDoe
% 
%   load('zelda1.mat')
%   [weapon1, rupees1] = datHookshotDoe(start1,card1,space1,letter1,pot1)
%       weapon1 => 'Lens of Truth'
%       rupees1 => 93
%
%   load('zelda2.mat')
%   [weapon2, rupees2] = datHookshotDoe(start2,card2,space2,letter2,pot2)
%       weapon2 => 'Quiver'
%       rupees2 => 158
%
%   load('zelda3.mat')  
%   [weapon3, rupees3] = datHookshotDoe(start3,dir3,space3,letter3,pot3)
%       weapon3 => 'Master Sword'
%       rupees3 => 142
%
%==========================================================================
% Click of the Week!!
%--------------------------------------------------------------------------
%
%   https://www.youtube.com/watch?v=LplSnXQMf38
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
