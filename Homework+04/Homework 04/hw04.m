%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Jeremy Cooley
% T-square ID  : jcooley6
% GT Email     : jcooley6@gatech.edu
% Homework     : HW 04 Original
% Course       : CS1371
% Section      : D05
% Collaboration: "I worked on this homework with Megan Walden and Colten 
%                  Caldwell for guidance and clarifying problem details, 
%                  but did not use solutions or partial solutions or 
%                  refer to any texts, web sites, or other materials not 
%                  provided as course materials for CS 1371."
%
%
% Files provided with this homework:
%   HW04 Drill Problems.pdf
%   hw04.m
%   ABCs_logicals.m
%   ABCs_hw04_pretest.p
%   meanNonZero_soln.p
%   checkPalindrome_soln.p
%   checkPassword_soln.p
%   camelCase_soln.p
%   theRatio_soln.p
%   crinimalMinds_soln.p
%
% Files to submit:
%   hw04.m
%   ABCs_logicals.m
%   meanNonZero.m
%   checkPalindrome.m
%   checkPassword.m
%   camelCase.m
%   theRatio.m
%   criminalMinds.m
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
% Part of this homework is an m-file called "ABCs_logicals". Open these
% files in MATLAB and complete it according to the directions contained
% within. 
%
% Files to Complete: 
%       - ABCs_logicals.m
% ABCs File Testing:
%  >> ABCs_hw04_pretest
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW04 Drill Problems.pdf",
% and included within are instructions for 6 drill problems that cover the
% following major topic(s):
%	Logicals
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
% Drill Problem #1: meanNonZero
%
%   mean1 = meanNonZero([0 1 0 1 0 0 2 0 2 0 3])
%       mean1 => 1.8000
%
%   mean2 = meanNonZero([0 1 0 0 64 0 0 43 72 6 5 4])
%       mean2 => 27.8571
%
%   mean3 = meanNonZero([0 0 -1 1 -1 0 1 -1 1 -1 0 4])
%       mean3 => 0.3750
%
%
%--------------------------------------------------------------------------
% Drill Problem #2: checkPalindrome
%
%	isPal1 = checkPalindrome(['Are we not drawn onward we few drawn' ...
%            'onward to new era'])
%       isPal1 => true
%
%   isPal2 = checkPalindrome('anna')
%       isPal2 => true
%
%   isPal3 = checkPalindrome('Palindrome')
%       isPal3 => false
%
%--------------------------------------------------------------------------
% Drill Problem #3: checkPassword
%
%   log1 = checkPassword('TyDollar$1gn')
%       log1 => true
%      
%   log2 = checkPassword('1tCannotContainPasSWoRD!')
%       log2 => false
%
%--------------------------------------------------------------------------
% Drill Problem #4: camelCase
%
%	out1 = camelCase('This Is a Variable')
%       out1 => 'thisIsAVariable'
%
%   out2 = camelCase('HERE IS AN EXAMPLE')
%       out2 => 'hereIsAnExample'
%
%   out3 = camelCase('the CoW jUmPeD over THE mooN')
%       out3 => 'theCowJumpedOverTheMoon'
%
%--------------------------------------------------------------------------
% Drill Problem #5: theRatio
%
%   out1 = theRatio([342, 467, 426, 587], [2948, 3185, 3120, 3597], ...
%        [1960, 1961, 1962, 1963])
%       out1 => [1960, 1961]
%
%   out2 = theRatio([0, 467, 784, 835, 1010, 1389], [2748, 2948, 5938, ...
%        7901, 9213, 1163], [1950, 1960, 1970, 1980, 1990, 2000])
%       out2 => [1990, 2000]
%
%--------------------------------------------------------------------------
% Drill Problem 5: criminalMinds
%
%	criminal1 = criminalMinds([true],[true],[false],[true])
%       criminal1 => 'Suspect #3 is lying.'
%
%   criminal2 = criminalMinds([true false false true true],[false true ...
%               true true false],[false true true true false],[false ...
%               true true true false])
%       criminal2 => 'Suspect #1 is lying.'
%
%   criminal3 = criminalMinds([true true true false],[true true true ...
%               false],[true true true false],[true true false false])
%       criminal3 => 'Suspect #4 is lying.'
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
