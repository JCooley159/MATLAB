%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Jeremy Cooley
% T-square ID  : jcooley6
% GT Email     : jcooley6@gatech.edu
% Homework     : Hw 3 Resubmission
% Course       : CS1371
% Section      : D05
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%
%
% Files provided with this homework:
%   hw03.m
%   ABCs_hw03_pretest.p
%   ABCs_strings.m
%   ABCs_vectors.m
%   HW03 Drill Problems.pdf
%   varInfo_soln.p
%   multiVar_soln.p
%   interweave_soln.p
%   gradeSorter_soln.p
%   caesarSalad_soln.p 
%
%
% Files to submit:
%   hw03.m
%   ABCs_vectors.m
%   ABCs_strings.m
%   varInfo.m
%   multiVar.m
%   interweave.m
%   gradeSorter.m
%   caesarSalad.m
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
% Part of this homework are two m-files called "ABCs_vectors" and
% "ABCs_strings". Open these files in MATLAB and complete it according to
% the directions contained within.
%
% Files to Complete:
%       - ABCs_vectors.m
%       - ABCs_strings.m
% ABCs File Testing:
%  >> ABCs_hw03_pretest
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW5 Drill Problems.pdf",
% and included within are instructions for 5 drill problems that cover the
% following major topic(s):
%	Vectors
%   Strings
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
% Drill Problem #1: varInfo
%
%   info1 = varInfo('I love MATLAB!!')
%       => info1 = 'This variable is of class char and has a value of ''I
%                  love MATLAB!!''.'
%
%   info2 = varInfo(34)
%       => info2 = 'This variable is of class double and has a value of
%                  ''34''.'
%
%   info3 = varInfo([1 2 3 4 5])
%       => info3 = 'This variable is of class double and has a value of
%                  ''1  2  3  4  5''.'
%
%   %% The strings above are written as they would need to be typed into
%   MATLAB, and are not what will be displayed in your command window %%
%
%--------------------------------------------------------------------------
% Drill Problem #2: multiVar
%
%   z1 = multiVar([1 2 3 4 5], [5 4 3 2 1])
%       => z1 = [0.6  0.7646  0.7019  0.5  0.1727]
%
%   z2 = multiVar([0 0.25 0.5 0.75 1], [1 25 50 75 100])
%       => z2 = [0  0.2419  0.4852  0.7280  0.9708]
%
%--------------------------------------------------------------------------
% Drill Problem #3: interweave
%
%   mixed1 = interweave([1 2 3 4 5],[6 7 8 9 10])
%       mixed1 => [1 6 2 7 3 8 4 9 5 10]
%
%   mixed2 = interweave([5 1 5 9 1], [4 1 3])
%       mixed2 => [5 4 1 1 5 3 9 0 1 0]
%
%   mixed3 = interweave([8 6 7], [5 3 0 9])
%       mixed3 => [8 5 6 3 7 0 0 9]
%
%--------------------------------------------------------------------------
% Drill Problem #4: gradeSorter
%
%   out1 = gradeSorter([75 84 71 71 87 91 54], 'OTEITLG', 'LGTTIEO')
%       => out1 = 'LE TI TG OL ET IT GO'
%
%   out2 = gradeSorter([65 70 64 89 65 99 100], 'ILCHBND', 'TDKOATO')
%       => out2 = 'DO NT HO LD IT BA CK'
%
%   out3 = gradeSorter([88 77 100], 'YRA', 'MEN')
%       => out3 = 'AN YM RE'
%
%--------------------------------------------------------------------------
% Drill Problem #5: caesarSalad
%
%	coded1 = caesarSalad('piglets', 3)
%       coded1 => 'sljohwv'
%
%   coded2 = caesarSalad('sljohwv', -3)
%       coded2 => 'piglets'
%
%   coded3 = caesarSalad('bae', -26)
%       coded3 => 'bae'
%
%   coded4 = caesarSalad('logizomechanophobia',79)
%       coded4 => 'mphjapnfdibopqipcjb'
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
