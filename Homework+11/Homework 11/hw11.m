%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Jeremy Cooley
% T-square ID  : jcooley6
% GT Email     : jcooley6@gatech.edu
% Homework     : HW 11 orig.
% Course       : CS1371
% Section      : D05
% Collaboration: "I worked on this homework with Megan Walden, but did not 
%                   use any solutions or partial solutions, and did not 
%                   refer to any materials not provided as course materials
%                   for CS 1371."
%
%
% Files provided with this homework:  
%   ABCs_hw11_pretest.p
%   ABCs_recursion.m
%   collatz_soln.p
%   deepestLayer_soln.p
%   generatePeople.p
%   r_nFib_soln.p
%   sixDegreesOfWaldo_soln.p
%   speedStack_soln.p
%   WaldoTestCases.mat
%   hw11.m
%   HW11 Drill Problems.pdf
%
% Files to submit:
%   hw11.m
%   ABCs_recursion.m
%   collatz.m
%   deepestLayer.m
%   r_nFib.m
%   sixDegreesOfWaldo.m
%   speedStack.m
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
% Part of this homework is an m-file called "ABCs_recursion". Open these
% files in MATLAB and complete it according to the directions contained
% within. 
%
% Files to Complete: 
%       - ABCs_recursion.m
% ABCs File Testing:
%  >> ABCs_hw11_pretest
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW5 Drill Problems.pdf",
% and included within are instructions for 5 drill problems that cover the
% following major topic(s):
%	recursion
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
% Drill Problem #1: deepestLayer
%
%   [out1] = deepestLayer({{{{94}}}})
%       out1 => 94
%
%   [out2] = deepestLayer({{{'Almond Joy > Reese''s'}}})
%       out2 => 'Almond Joy > Reese''s'
%
%   [out3] = deepestLayer(true)
%       out3 => true
%
%--------------------------------------------------------------------------
% Drill Problem #2: collatz
%
%   [out1 num1] = collatz(1)
%       out1 => 1
%       num1 => 0
%
%   [out2 num2] = collatz(54789)
%       out2 => 1
%       num2 => 153
%
%   [out3 num3] = collatz(10)
%       out3 => 1
%       num3 => 6
%
%--------------------------------------------------------------------------
% Drill Problem #3: speedStack
%
%   [out1] = speedStack(3,'1')
%       out1 => 
%               ['  1  ';
%                ' 1 1 ';
%                '1 1 1']
%
%   [out2] = speedStack(10,'O')
%       out2 =>
% 
%       ['         O         ';
%        '        O O        ';
%        '       O O O       ';
%        '      O O O O      ';
%        '     O O O O O     ';
%        '    O O O O O O    ';
%        '   O O O O O O O   ';
%        '  O O O O O O O O  ';
%        ' O O O O O O O O O ';
%        'O O O O O O O O O O']
%
%   [out3] = speedStack(30,'#')
%       out3 =>
% 
%    ['                             #                             ';
%     '                            # #                            ';
%     '                           # # #                           ';
%     '                          # # # #                          ';
%     '                         # # # # #                         ';
%     '                        # # # # # #                        ';
%     '                       # # # # # # #                       ';
%     '                      # # # # # # # #                      ';
%     '                     # # # # # # # # #                     ';
%     '                    # # # # # # # # # #                    ';
%     '                   # # # # # # # # # # #                   ';
%     '                  # # # # # # # # # # # #                  ';
%     '                 # # # # # # # # # # # # #                 ';
%     '                # # # # # # # # # # # # # #                ';
%     '               # # # # # # # # # # # # # # #               ';
%     '              # # # # # # # # # # # # # # # #              ';
%     '             # # # # # # # # # # # # # # # # #             ';
%     '            # # # # # # # # # # # # # # # # # #            ';
%     '           # # # # # # # # # # # # # # # # # # #           ';
%     '          # # # # # # # # # # # # # # # # # # # #          ';
%     '         # # # # # # # # # # # # # # # # # # # # #         ';
%     '        # # # # # # # # # # # # # # # # # # # # # #        ';
%     '       # # # # # # # # # # # # # # # # # # # # # # #       ';
%     '      # # # # # # # # # # # # # # # # # # # # # # # #      ';
%     '     # # # # # # # # # # # # # # # # # # # # # # # # #     ';
%     '    # # # # # # # # # # # # # # # # # # # # # # # # # #    ';
%     '   # # # # # # # # # # # # # # # # # # # # # # # # # # #   ';
%     '  # # # # # # # # # # # # # # # # # # # # # # # # # # # #  ';
%     ' # # # # # # # # # # # # # # # # # # # # # # # # # # # # # ';
%     '# # # # # # # # # # # # # # # # # # # # # # # # # # # # # #']
%
%--------------------------------------------------------------------------
%   Drill Problem #4: nFib
%
%   fibseq1 = r_nFib(4,10)
%       fibseq1 => [4 4 8 12 20 32 52 84 136 220]
%         
%   fibseq2 = r_nFib(0,6)
%       fibseq2 => [0 1 1 2 3 5]
%
%   fibseq3 = r_nFib(400,0)
%       fibseq3 => Empty matrix: 1-by-0
%       *Will appear as [] in the Workspace.*
%       **isequal(r_nFib,r_nFib_soln) will output true if your solution
%       correctly accounts for the second input being 0.**
%
% --------------------------------------------------------------------------
% Drill Problem #5: sixDegreesOfWaldo
% 
%    load('WaldoTestCases.mat');
%    [exists1, degree1] = sixDegreesOfWaldo(waldo1)
%           exists1 => false
%           degree1 => 0
% 
%    [exists2, degree2] = sixDegreesOfWaldo(waldo2)
%           exists2 => true
%           degree2 => 0
% 
%    [exists3, degree3] = sixDegreesOfWaldo(waldo3)
%           exists3 => true
%           degree3 => 1
%           (FYI: Waldo is the 4th friend of Otis - waldo3.Friends(4))
% 
%    [exists4, degree4] = sixDegreesOfWaldo(waldo4)
%           exists4 => true
%           degree4 => 2
%           (FYI: Waldo is the 1st friend of the 5th friend of Otis - 
%                waldo4.Friends(5).Friends(1))
% 
%    [exists5, degree5] = sixDegreesOfWaldo(waldo5)
%           exists5 => true
%           degree5 => 6
%           (FYI: Waldo is the 1st friend of the 4th friend of the 1st
%           friend of the 1st friend of the 1st friend of the 2nd friend of
%           Otis - 
%           waldo5.Friends(2).Friends(1).Friends(1).Friends(1).Friends(4).Friends(1))
%
%==========================================================================
% Click of the Week!!
%--------------------------------------------------------------------------
%
%   https://www.youtube.com/watch?v=kTFZyl7hfBw
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
