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
%   ABCs_hw12_pretest.p
%   ABCs_numericalMethods.m
%   ABCs_plotting.m
%   abcs_plotting.mat
%   curveFit_soln.p
%   data.mat
%   heartbeat_soln.p
%   hw12.m
%   maxGradeMinTime_soln.p
%   plotShapes_soln.p
%   recursiveCampanile_soln.p
%   timeGrade_test.mat
%   HW12 Drill Problems.pdf
%   studentPlotCheck.m
%   studentPlotCheck.p
%
% Files to submit:
%   hw12.m
%   ABCs_numericalMethods.m
%   curveFit.m
%   heartbeat.m
%   maxGradeMinTime.m
%   plotShapes.m
%   recursiveCampanile.m
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
% Part of this homework is an m-file called "ABCs_numericalMethods". Open 
% these files in MATLAB and complete it according to the directions
% contained within. 
%
% Files to Complete: 
%       - ABCs_numericalMethods.m
% ABCs File Testing:
%  >> ABCs_hw12_pretest
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW5 Drill Problems.pdf",
% and included within are instructions for 5 drill problems that cover the
% following major topic(s):
%	plotting
%   numericalMethods
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
% Drill Problem #1: heartbeat
%
%    x1 = [ 0 , 1, 1.5, 2, 3, 4, 5, 6 , 6.5 ,7]; 
%    y1 = [ 0 , 0 , -1, 0 , 5 , 0 , -3 , 0, 1.5, 0];
%    tr1 = [9.250 10.000];
%    [area1,  cond1] = heartbeat(x1,y1,tr1)
%       area1   => 9.25
%       cond1   => 'Normal Blood Pressure'
%
%    x2 = [ 0 , 1, 1.5, 2, 3, 4, 5, 6 , 6.5 ,7];
%    y2 = [ 0 , 0 , -1, 0 , 8 , 0 , -4 , 0, 2, 0];
%    tr2 = [10 13];
%    [area2,  cond2] = heartbeat(x2,y2,tr2)
%       area2   => 13.5
%       cond2   => 'High Blood Pressure'
%
%
%    x3 = [ 0 , 1, 1.5, 2, 3, 4, 5, 6 , 6.5 ,7]; 
%    y3 = [ 0 , 0 , -1, 0 , 8 , 0 , -4 , 0, 2, 0];
%    tr3 = [13.6 16];
%    [area3,  cond3] = heartbeat(x3,y3,tr3)
%       area3   => 13.5
%       cond3   => 'Low Blood Pressure'
%
%--------------------------------------------------------------------------
% Drill Problem #2: maxGradeMinTime
%
%   load('timeGrade_test.mat')
%
%   [time1, grade1, coeff1] = maxGradeMinTime(times1, grades1)
%           time1   => 5.1515
%           grade1  => 0.5378
%           coeff1  => 1.5660
%
%   [time2, grade2, coeff2] = maxGradeMinTime(times2, grades2)
%           time2   => 11.9299
%           grade2  => 6.9216
%           coeff2  => 8.7029
%
%   [time3, grade3, coeff3] = maxGradeMinTime(times3, grades3)
%           time3   => 1.2847
%           grade3  => -0.0637
%           coeff3  => -0.7435
%
%--------------------------------------------------------------------------
% Drill Problem #3: plotShapes
%
%   plotShapes('circle',10,10,[2,3]);
%           Output plot should be identical to running solution code 
%           with same inputs.
%
%   plotShapes('square',100,0,[-20,40]);
%           Output plot should be identical to running solution code 
%           with same inputs.
%
%   plotShapes('square',100,-34,[30,-10]);
%           Output plot should be identical to running solution code 
%           with same inputs.
%
%--------------------------------------------------------------------------
% Drill Problem #4: curveFit
%
%   load('data.mat');
%
%   curveFit(data1x, data1y, 2);
%           Output plot should be identical to running solution code 
%           with same inputs.
%
%   curveFit(data2x, data2y, 4);
%           Output plot should be identical to running solution code 
%           with same inputs.
%
%   curveFit(data3x, data3y, 5);
%           Output plot should be identical to running solution code 
%           with same inputs.
%
%--------------------------------------------------------------------------
% Drill Problem #5: recursiveCampanile
%
%   recursiveCampanile(10, 0, 'rkbgcym')
%           Output plot should be identical to running solution code 
%           with same inputs.
%
%   recursiveCampanile(12, pi/32, 'b')
%           Output plot should be identical to running solution code 
%           with same inputs.
%
%   recursiveCampanile(15, pi/45, 'kg')
%           Output plot should be identical to running solution code 
%           with same inputs.
%
%   recursiveCampanile(15, pi/40, 'cbk')
%           Output plot should be identical to running solution code 
%           with same inputs.
%
%==========================================================================
% Click of the Week!!
%--------------------------------------------------------------------------
%
%   https://www.youtube.com/watch?v=8F9jXYOH2c0
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
