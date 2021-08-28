%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Jeremy Cooley
% T-square ID  : jcooley6
% GT Email     : jcooley6@gatech.edu
% Homework     : HW 14
% Course       : CS1371
% Section      : D05
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%                
%
% Files provided with this homework:  
%	hw14.m
%   solarSystem.m
%   solarSystem_sample.p
%   makePlanet_soln.p
%   rotateOrbit_soln.p
%   HW14 Animation Project.pdf
%   maps.zip
%   
% Files to submit:
%   - solarSystem.m
%   - makePlanet.m *
%   - rotateOrbit.m *
%   - any other functions used in solarSystem.m *
%
%   * = optional unless used in solarSystem.m
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
% Drill Problem #1: makePlanet
% 
%   makePlanet([1;1;1], 1);
%       => should look something like makePlanet_soln([1;1;1], 1)
% 
%   makePlanet([-2;4;-1], 2);
%       => should look something like makePlanet_soln([-2;4;-1], 2)
%   
%   makePlanet([1;-1;1], 1.5);
%       => should look something like makePlanet_soln([1;-1;1], 1.5)
%
%--------------------------------------------------------------------------
% Drill Problem #2: rotateOrbit
% 
%   [newpoints] = rotateOrbit([1; 1; 1], 90)
%       newpoints => [-1; 1; 1]
% 
%   [newpoints] = rotateOrbit([-2; 4; -1], 50)
%       newpoints => [-4.3498; 1.0391; -1]
%   
%   [newpoints] = rotateOrbit([1; -1; 1], 150)
%       newpoints => [-0.3660; 1.3660; 1]
%
%--------------------------------------------------------------------------
% Drill Problem #3: solarSystem
% 
%   There are no test cases for this, just make sure you fulfill all the
%   requirements as given in the problem statement.
%
%==========================================================================
% Click of the Week!!
%--------------------------------------------------------------------------
%
%   https://www.youtube.com/watch?v=j3YrNSw5a2I
%
%==========================================================================
% BLAST-OFF!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
