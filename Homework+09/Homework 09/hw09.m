%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Jeremy Cooley
% T-square ID  : jcooley6
% GT Email     : jcooley6@gatech.edu
% Homework     : HW 09 Original
% Course       : CS1371
% Section      : D05
% Collaboration: "I worked on this homework with Megan Walden, Colten 
%                   Caldwell, Harrison WIlliams, and Chris Nowack, but I did
%                   not use solutions or partial solutions, and referred to 
%                   no texts, web sites, or
%                  other materials not provided as course materials for CS
%                  1371.>"
%
%
% Files provided with this homework:  
%   ABCs_CellArrays.m
%   ABCs_HighLevelFileIO.m
%   ABCs_hw09_pretest.p
%   accounting_soln.p
%   AJC_log.xlsx
%   Bkpqfuhm.xls
%   Bkpqfuhm_fixed_soln.xls
%   blackListedWords.mat
%   blackOut_soln.p
%   chegg_log.xlsx
%   cookbook.txt
%   Dtvyhzysrtqye.xls
%   Dtvyhzysrtqye_fixed_soln.xls
%   Facebook_log.xlsx
%   healthyHabits_soln.p
%   HW09 Drill Problems.pdf
%   hw09.m
%   itsaMe_soln.p
%   marioCup.xls
%   marioCup_Results_soln.xls
%   matlabCup.xls
%   matlabCup_Results_soln.xls
%   mushroomCup.xls
%   mushroomCup_Results_soln.xls
%   webTracker_soln.p
%   pantry.xlsx
%   rubric_hw1grades.xls
%   school.xls
%   school_soln.xls
%   text1.txt
%   text1_CENSORED_soln.txt
%   text2.txt
%   text2_CENSORED_soln.txt
%
% Files to submit:
%   hw09.m
%   blackOut.m
%   accounting.m
%   healthyHabits.m
%   itsaMe.m
%   webTracker.m
%   ABCs_CellArrays.m
%   ABCs_HighLevelFileIO.m
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
% Part of this homework are two m-files called "ABCs_CellArrays" and 
% "ABCs_HighLevelFileIO". Open these files in MATLAB and complete it 
% according to the directions contained within. 
%
% Files to Complete: 
%       - ABCs_CellArrays.m
%       - ABCs_HighLevelFileIO.m
% ABCs File Testing:
%  >> ABCs_hw09_pretest
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW09 Drill Problems.pdf",
% and included within are instructions for 5 drill problems that cover the
% following major topic(s):
%	Cell Arrays
%   High Level File I/O
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
% Drill Problem #1: blackOut
%
%   load('blackListedWords.mat')
%   blackOut('text1.txt', words1)
%       Output file should be identical to 'text1_CENSORED_soln.txt'
%
%   blackOut('text2.txt', words2)
%       Output file should be identical to 'text2_CENSORED_soln.txt'
%
%   NOTE: The files we provided have an additional '_soln' so that you do
%   not overwrite it with your code.  Student code will receive no credit
%   if it contains an '_soln' in the file name.
%
%--------------------------------------------------------------------------
% Drill Problem #2: accounting
%
%   accounting('school.xls')
%   	Output file should be identical to 'school_fixed_soln.xls'
%
%   accounting('Bkpqfuhm.xls')
%       Output file should be identical to 'Bkpqfuhm_fixed_soln.xls'
%
%   accounting('Dtvyhzysrtqye.xls')
%       Output file should be identical to 'Dtvyhzysrtqye_fixed_soln.xls'
%
%   NOTE: The files we provided have an additional '_soln' so that you do
%   not overwrite it with your code.  Student code will receive no credit
%   if it contains an '_soln' in the file name.
%
%--------------------------------------------------------------------------
% Drill Problem #3: healthyHabits
%
%   out1 = healthyHabits('Egg In A Nest', 'cookbook.txt', 'pantry.xlsx')
%       out1 => {'Egg In A Nest';
%               'Calories: 212';
%               'Total Fat: 11 g';
%               'Carbs: 13 g';
%               'Protein: 15 g'}
%
%   out2 = healthyHabits('Bacon Milk Shake', 'cookbook.txt', 'pantry.xlsx')
%       out2 => {'Bacon Milk Shake';
%               'Calories: 3684';
%               'Total Fat: 320 g';
%               'Carbs: 107 g';
%               'Protein: 102 g'}
%
%   out3 = healthyHabits('Chicken Sandwich', 'cookbook.txt', 'pantry.xlsx')
%       out3 => {'Chicken Sandwich';
%               'Calories: 1500';
%               'Total Fat: 104 g';
%               'Carbs: 106 g';
%               'Protein: 32 g'}
%
%--------------------------------------------------------------------------
% Drill Problem #4: itsaMe
%
%   win1 = itsaMe('matlabCup.xls')
%       win1 => 'Congratulations! Luigi wins with a total of 67 points!'
%      
%   win2 = itsaMe('mushroomCup.xls')
%       win2 => 'Congratulations! DK wins with a total of 25 points!'
%
%   win3 = itsaMe('marioCup.xls')
%       win3 => 'Congratulations! Shy Guy wins with a total of 50 points!'
%
%--------------------------------------------------------------------------
% Drill Problem #5: webTracker
%
%   winnerIP1 = webTracker('Facebook_log.xlsx','February')
%       winnerIP1 => '209.167.128.156'
%      
%   winnerIP2 = webTracker('Facebook_log.xlsx','June')
%       winnerIP2 => '198.154.251.118'                                     
%
%   winnerIP3 = webTracker('chegg_log.xlsx','March')
%       winnerIP3 => '49.174.155.132'
%
%   winnerIP4 = webTracker('AJC_log.xlsx','January')
%       winnerIP4 => '149.60.43.82'
%
%==========================================================================
% Click of the Week!!
%--------------------------------------------------------------------------
%
%   https://www.destroyallsoftware.com/talks/wat
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
