%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Jeremy Cooley
% T-square ID  : jcooley6
% GT Email     : jcooley6@gatech.edu
% Homework     : HW 06 Original
% Course       : CS1371
% Section      : D05
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%                 
%
% Files provided with this homework:  
%   ABCs_conditionals.m
%   ABCs_hw06_pretest.p
%   aragornAndArwen_soln.p
%   howSingle_soln.p
%   HW06 Drill Problems.pdf
%   hw06.m
%   loveCalculator_soln.p
%   rPSL_soln.p
%   matchZodiac_soln.p
%
% Files to submit:
%   ABCs_conditionals.m
%   aragornAndArwen.m
%   howSingle.m
%   hw06.m
%   loveCalculator.m
%   rPSL.m
%   matchZodiac.m
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
% Part of this homework is an m-file called "ABCs_conditionals". Open this
% files in MATLAB and complete it according to the directions contained
% within. 
%
% Files to Complete: 
%       - ABCs_conditionals.m
% ABCs File Testing:
%  >> ABCs_hw06_pretest
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW06 Drill Problems.pdf",
% and included within are instructions for 5 drill problems that cover the
% following major topic(s):
%	conditionals
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
% Drill Problem #1: howSingle
%
%   out1 = howSingle('Engineer', 'Female', 1, true)
%       out1 = 'You''re totally HOT, you won't be single long!'
%      
%   out2 = howSingle('CS', 'Female', 1, false)
%       out2 = 'You''re not completely undateable, keep trying!'
%
%   out3 = howSingle('Business', 'Male', 2, false)
%       out3 = 'You might want to renew your Netflix subscription.'
%
%--------------------------------------------------------------------------
% Drill Problem #2: rPSL
%   out1 = rPSL('John-Rock','Jane-Paper')
%       out1 = 'Paper beats rock. Jane wins.'
%      
%   out2 = rPSL('Jack-Love','Jill-Paper')
%       out2 = 'Love conquers all! Jack wins.'
%
%   out3 = rPSL('Jordan-Love','Jordan-Love')
%       out3 = 'Love conquers all! Jordan and Jordan both win.'
%
%--------------------------------------------------------------------------
% Drill Problem #3: loveCalculator
%
%   out1 = loveCalculator('briggyda', 'iggy')
%       out1 = 0
%      
%   out2 = loveCalculator('katniss everdean', 'peeta mallark')
%       out2 = 1020
%
%   out3 = loveCalculator('bella swan','edward cullen')
%       out3 = 710
%
%   out4 = loveCalculator('hans','anna')
%       out4 = 1
%
%--------------------------------------------------------------------------
% Drill Problem #4: aragornAndArwen
%
%   matched1 = aragornAndArwen('elf', 4, [true false true], 74)
%       matched1 = ['You have 87.50% odds of finding your soul mate ' ...
%                   'in Middle Earth.']
%
%   matched2 = aragornAndArwen('hobbit', 2, [false false false], 111)
%       matched2 = ['Your only shot at love would be a match made in ' ...
%                   'Mordor.']
%
%   matched3 = aragornAndArwen('man', 2, [true true false], 87)
%       matched3 = ['You have 75.00% odds of finding your soul mate ' ...
%                   'in Middle Earth.']
%
%   matched4 = aragornAndArwen('Gollum', 1, [false true false], 1318)
%       matched4 = ['You lost your Precious, the One Ring. Please, ' ...
%                   'try again later.']
%
%   Note: The given solution outputs must be run in the command window to
%   see how they actually appear in MATLAB.  Your output should not appear
%   in the command window with brackets, ellipses, or extra quotations.
%
%--------------------------------------------------------------------------
% EXTRA CREDIT
%--------------------------------------------------------------------------
% Drill Problem #5: matchZodiac
%
%   prob1 = matchZodiac('March 21', 'July 24')
%       prob1 = '100%'
%
%   prob2 = matchZodiac('February 29', 'June 20')
%       prob2 = '25%'
%
%   prob3 = matchZodiac('November 21', 'September 23')
%       prob3 = 'Wild Card'
%
%   prob4 = matchZodiac('December 21', 'February 18')
%       prob4 = '50%'
%
%   With it being a test week, we decided to make this problem extra credit
%   to give you more time to study.  Note that this is not an occurrence
%   that will happen frequently, and this problem is still a good problem
%   to solve to practice conditionals.
%
%
%==========================================================================
% Click of the Week!!
%--------------------------------------------------------------------------
%
%   In honor of Valentine's Day:
%   https://www.youtube.com/watch?v=YLAvhE4a_hI
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
