%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Jeremy Cooley
% T-square ID  : jcooley6
% GT Email     : jcooley6@gmail.com
% Homework     : HW 10 Resubmission
% Course       : CS1371
% Section      : D05
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%                
%
% Files provided with this homework:  
%   hw10.m
%   ABCs_hw10_pretest.p
%   ABCs_structure_arays.m
%   ACs_structures.m
%   aurors1.mat
%   aurors2.mat
%   aurors3.mat
%   Bellatrix.txt
%   Greyback.txt
%   HW10 Drill Problems.pdf
%   Kreacher.txt
%   ministryOfMagic_soln.p
%   myStruct_soln.p
%   myStruct_variables.mat
%   myStruct_variables2.mat
%   Narcissa.txt
%   omgShoes_soln.p
%   omgShoes_testCases.mat
%   socialMedia_soln.p
%   Voldemort.txt
%   walmart_soln.p
%   walmartTest.mat
%
% Files to submit:
%   ABCs_structure_arays.m
%   ACs_structures.m
%   hw10.m
%   ministryOfMagic.m
%   myStruct.m
%   omgShoes.m
%   socialMedia.m
%   walmart.m
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
% Part of this homework are two m-files called "ABCs_structures" and 
% "ABCs_structure_arrays". Open these files in MATLAB and complete them 
% according to the directions contained within. 
%
% Files to Complete: 
%       - ABCs_structures.m
%       - ABCs_structure_arrays.m
% ABCs File Testing:
%  >> ABCs_hw10_pretest
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW10 Drill Problems.pdf",
% and included within are instructions for 5 drill problems that cover the
% following major topic(s):
%	structures
%   structure arrays
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
% Drill Problem #1: socialMedia
% 
%   out1 = socialMedia(struct('Facebook', {31, 12,4,2}, 'Twitter',...
%          {15,23,42,4}, 'Instagram', {2,100,10,9}))
%       out1 => 'Facebook'
%      
%   out2 = socialMedia(struct('Twitter', {40, 12,3, 6}, 'Facebook',...
%          {4,1,5,2}, 'Instagram', {43,23,12,2}))
%       out2 => 'Twitter'
%
%--------------------------------------------------------------------------
%   Drill Problem #2: walmart
%
%   load('walmartTest.mat')
%
%   [updated1] = walmart(original1,ca1)
%       => isequal(updated1, updated1_soln) should yield true.
%
%   [updated2] = walmart(original2,ca2)
%       => isequal(updated2, updated2_soln) should yield true.
%
%   [updated3] = walmart(original3,ca3)
%       => isequal(updated3, updated3_soln) should yield true.
%
%--------------------------------------------------------------------------
% Drill Problem #3: myStruct
%
%   load('myStruct_variables.mat')
%   
%   mySt1 = myStruct(cell1)
%       >> isequal(mySt1, outSt1) should yield true 
%      
%   mySt2 = myStruct(cell2)
%       >> isequal(mySt2, outSt2) should yield true
%
%   mySt3 = myStruct(cell3)
%       >> isequal(mySt3, outSt3) should yield true
%
%--------------------------------------------------------------------------
%   Drill Problem #4: omgShoes
%
%   load omgShoes_testCases.mat
%   
%   [new1] = omgShoes(inventory, orders1)
%       => isequal(new1, new1_soln) should yield true.
%
%   [new2] = omgShoes(inventory, orders2)
%       => isequal(new2, new2_soln) should yield true.
%
%   [new3] = omgShoes(inventory, orders3)
%       => isequal(new3, new3_soln) should yield true.
%
%--------------------------------------------------------------------------
% Drill Problem #5: ministryOfMagic
%
%   load('aurors1.mat')
%   dailyProphet1 = ministryOfMagic('Narcissa.txt', aurors1)
%       dailyProphet1 => ['The Ministry of Magic Department of Magical'...
%                        ' Law Enforcement dispatched Nymphadora Tonks to'...
%                        ' take on Narcissa Malfoy. Nymphadora Tonks'...
%                        ' succeeded in apprehending Narcissa Malfoy.']
%
%   load('aurors2.mat');
%   dailyProphet2 = ministryOfMagic('Kreacher.txt', aurors2)
%       dailyProphet2 => ['The Ministry of Magic Department of Magical'...
%                        ' Law Enforcement dispatched Alice Longbottom to'...
%                        ' take on Kreacher. Alice Longbottom succeeded'...
%                        ' in apprehending Kreacher.']
%
%   load('aurors3.mat');
%   dailyProphet3 = ministryOfMagic('Greyback.txt', aurors3)
%       dailyProphet3 => ['The Ministry of Magic Department of Magical'...
%                        ' Law Enforcement dispatched Gawain Robards to'...
%                        ' take on Fenrir Greyback. Gawain Robards'...
%                        ' failed to apprehend Fenrir Greyback.']
%
%   load('aurors3.mat');
%   dailyProphet4 = ministryOfMagic('Voldemort.txt', aurors3)
%       dailyProphet4 => ['The Ministry of Magic Department of Magical'...
%                        ' Law Enforcement dispatched Harry Potter to'...
%                        ' take on Voldemort. Harry Potter absolutely'...
%                        ' destroyed Voldemort.']
%
%==========================================================================
% Click of the Week!!
%--------------------------------------------------------------------------
%
%   https://www.youtube.com/watch?v=Tx1XIm6q4r4
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
