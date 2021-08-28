%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Jeremy Cooley
% T-square ID  : jcooley6
% GT Email     : jcooley6@gatech.edu
% Homework     : HW 08 Resubmission
% Course       : CS1371
% Section      : D05
% Collaboration: "I worked on this homework with FLip Kaifer and Megan Walden,
%                  used solutions or partial
%                  solutions provided by no one and referred to no
%                  other materials not provided as course materials for CS
%                  1371."
%
%
% Files provided with this homework:  
%   ABCs_hw08_pretest.p
%   abcs_lights.txt
%   ABCs_LowLevelFileIO.m
%   cipher_1.txt
%   cipher_2.txt
%   detention_soln.p
%   fauxHipster_soln.p
%   handCramps1.txt
%   handCramps2.txt
%   handCramps3.txt
%   hipConvo1.txt
%   hipConvo2.txt
%   hipConvo3.txt
%   hipLingo.txt
%   HW08 Drill Problems.pdf
%   hw08.m
%   lyrics_1.txt
%   lyrics_2.txt
%   lyrics_3.txt
%   lyrics_4.txt
%   ottendorf_soln.p
%   phoneList1.txt
%   phoneList1_updated_soln.txt
%   phoneList2.txt
%   phoneList2_updated_soln.txt
%   phoneList3.txt
%   phoneList3_updated_soln.txt
%   phoneNumbers_soln.p
%   quote_1.txt
%   quote_2.txt
%   TLA1.txt
%   TLA2.txt
%   TLA3.txt
%   tooManyTLAs_soln.p
%
% Files to submit:
%   ABCs_LowLevelFileIO.m
%   tooManyTLAs.m
%   detention.m
%   phoneNumbers.m
%   fauxHipster.m
%   ottendorf.m
%   hw08.m
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
% Part of this homework is an m-file called "ABCs_LowLevelFileIO". Open 
% these files in MATLAB and complete it according to the directions 
% contained within. 
%
% Files to Complete: 
%       - ABCs_LowLevelFileIO.m
% ABCs File Testing:
%  >> ABCs_hw08_pretest
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW08 Drill Problems.pdf",
% and included within are instructions for 5 drill problems that cover the
% following major topic(s):
%	Low Level File I/O
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
% Drill Problem #1: tooManyTLAs
%
%   acro1 = tooManyTLAs('TLA1.txt')
%       acro1 => 'Left Shark is bae.'
%      
%   acro2 = tooManyTLAs('TLA2.txt')
%       acro2 => 'Help! The TAs trapped me in this computer and I can''t...
%                   get out!'
%
%   acro3 = tooManyTLAs('TLA3.txt')
%       acro3 => 'TLOK'
%
%--------------------------------------------------------------------------
% Drill Problem #2: detention
%
%   result1 = detention('handCramps1.txt', ['I will never ever EVER' ...
%           ' skip class again.'])
%       result1 => 'Good job. You are free to go!'
%      
%   result2 = detention('handCramps2.txt', ['I will never curse at' ...
%           ' Matlab again while I''m at Georgia Tech.'])
%       result2 => 'Not so fast... Start all over!'
%
%   result3 = detention('handCramps3.txt', ['I will do my CS1371' ...
%           ' homework early and never waste time watching Netflix.'])
%       result3 => 'Not so fast... Start all over!'
%
%--------------------------------------------------------------------------
% Drill Problem #3: phoneNumbers
%
%   [out1] = phoneNumbers('phoneList1.txt')
%       out1 => 11
%       output file named 'phoneList1_updated.txt'
%
%   [out2] = phoneNumbers('phoneList2.txt')
%       out2 => 10
%       output file named 'phoneList2_updated.txt'
%
%   [out3] = phoneNumbers('phoneList3.txt')
%       out3 => 12
%       output file named 'phoneList3_updated.txt'
%
%   NOTE: The files we provided have an additional '_soln' so that you do
%   not overwrite it with your code.  Student code will receive no credit
%   if it contains an '_soln' in the file name.
%
%--------------------------------------------------------------------------
% Drill Problem #4: fauxHipster
%
%   [score1] = fauxHipster('hipConvo1.txt', 'hipLingo.txt')
%           score1 => 9
%
%   [score2] = fauxHipster('hipConvo2.txt', 'hipLingo.txt')
%           score2 => 8
%
%   [score3] = fauxHipster('hipConvo3.txt', 'hipLingo.txt')
%           score3 => 10
%
%--------------------------------------------------------------------------
% Drill Problem #5: ottendorf
%
%   [out1] = ottendorf('lyrics','cipher_1.txt')
%           out1 => 'Meet under the bridge at midnight. Come alone.'
%
%   [out2] = ottendorf('quote','cipher_2.txt')
%           out2 => 'password: Bnt2nz'
%
%==========================================================================
% Click of the Week!!
%--------------------------------------------------------------------------
%
%   https://www.youtube.com/watch?v=Hm3JodBR-vs
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
