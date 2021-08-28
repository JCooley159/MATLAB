%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Jeremy Cooley
% T-square ID  : jcooley6
% GT Email     : jcooley6@gmail.com
% Homework     : HW 13
% Course       : CS1371
% Section      : D05
% Collaboration: "I worked on this homework with Megan Walden, used solutions or partial
%                  solutions provided by <name the people or other
%                  sources>, and referred to <cite any texts, web sites, or
%                  other materials not provided as course materials for CS
%                  1371.>"
%
%
% Files provided with this homework:  
%   - ABCs_hw13_pretest.p
%   - ABCs_images.m
%   - abcs_pretest1.png
%   - apples.png
%   - batman.png
%   - batman100x100_soln.png
%   - beach.png
%   - beach_foundhim_soln.png
%   - bigTest.jpg
%   - bigTest_colored_soln.jpg
%   - buzz.png
%   - checkImage_soln.p
%   - circus.png
%   - circus_foundhim_soln.png
%   - colorByNum_soln.p
%   - coloringBook_soln.p
%   - colors.mat
%   - colorScreen_soln.p
%   - crayon.xlsx
%   - donaldDuck.png
%   - donaldDuck_retro_soln.png
%   - eagle.png
%   - falcons.png
%   - falcons4x4_soln.png
%   - falcons10x10_soln.png
%   - falcons20x20_soln.png
%   - falcons50x50_soln.png
%   - flower1.png
%   - flower2.png
%   - gradient1.png
%   - gradient1_mountains_overlay_soln.png
%   - gradient2.png
%   - gradient2_eagle_screen_soln.png
%   - gradient3.png
%   - gradient3_pattern_overlay_soln.png
%   - hashtagNoFilter_soln.png
%   - honeycomb.png
%   - honeycomb_buzz_multiply_soln.png
%   - HW13 Drill Problems.pdf
%   - hw13.m
%   - lookit.png
%   - marioOutline.jpg
%   - marioOutline_colored_soln.jpg
%   - mosaic_soln.p
%   - mountains.png
%   - mufasaAndSimba.png
%   - mufasaAndSimba_retro_soln.png
%   - olaf.png
%   - olaf_retro_soln.png
%   - oranges.png
%   - pattern.png
%   - pic.png
%   - smallTest.jpg
%   - smallTest_colored_soln.jpg
%   - smith.png
%   - smith50x50_soln.png
%   - soln1.png
%   - soln2.png
%   - tangerines.png
%   - train.png
%   - train_foundhim_soln.png
%   - trex.png
%   - ttower.png
%   - turtleOutline.jpg
%   - turtleOutline_colored_soln.jpg
%   - waldo1.png
%   - waldo2.png
%   - waldo3.png
%
% Files to submit:
%   - ABCs_images.m
%   - hw13.m
%   - checkImage.m
%   - colorScreen.m
%   - hashtagNoFilter.m
%   - coloringBook.m
%   - mosaic.m
%   - wheresWaldo.m
%   (- colorByNum.m)
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
% Part of this homework is an m-file called "ABCs_images". Open these
% files in MATLAB and complete it according to the directions contained
% within. 
%
% Files to Complete: 
%       - ABCs_images.m
% ABCs File Testing:
%  >> ABCs_hw13_pretest
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW13 Drill Problems.pdf",
% and included within are instructions for 6 drill problems that cover the
% following major topic(s):
%	images
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
% Drill Problem #1: checkImage
%	
%   out1 = checkImage('apples.png', 'oranges.png');
%       out1 => 'The images have different dimensions.'
%
%   out2 = checkImage('flower1.png', 'flower2.png');
%       out2 => 'The images are the same.'
%
%   out3 = checkImage('oranges.png', 'tangerines.png');
%      out3 => 'The RGB values are different.' 
%      'orangesVStangerines.png' => should look like 
%                                   'orangesVStangerines_soln.png'
%
% As a double-check:
%  out4 = checkImage('orangesVStangerines.png', 'orangesVStangerines_soln.png')
%    out4 => 'The images are the same.'
%
%--------------------------------------------------------------------------
% Drill Problem #2: colorScreen
%
% Test Cases:
%   im1 = colorScreen('trex.png','ttower.png',[0 255 0]);
%   imshow(im1) 
%       => should look like 'soln1.png'
%
%   im2 = colorScreen('lookit.png','pic.png',[237 28 36]);
%   imshow(im2) 
%       => should look like 'soln2.png'
%
%--------------------------------------------------------------------------
% Drill Problem #3: hashtagNoFilter
%
%   hashtagNoFilter('gradient1.png','mountains.png','overlay')
%           Output file should be identical to 'gradient1_mountains_overlay_soln.png'
%
%   hashtagNoFilter('gradient2.png', 'eagle.png', 'screen')
%           Output file should be identical to 'gradient2_eagle_screen_soln.png'
%
%   hashtagNoFilter('gradient3.png', 'pattern.png', 'overlay')
%           Output file should be identical to 'gradient3_pattern_overlay_soln.png'
%
%   hashtagNoFilter('honeycomb.png', 'buzz.png', 'multiply')
%           Output file should be identical to 'honeycomb_buzz_multiply_soln.png'
%
%--------------------------------------------------------------------------
% Drill Problem #4: coloringBook
%
%   coloringBook('mufasaAndSimba.png','crayon.xlsx')
%           Output file should be identical to 'mufasaAndSimba_retro_soln.png'
%
%   coloringBook('donaldDuck.png','crayon.xlsx')
%           Output file should be identical to 'donaldDuck_retro_soln.png'
%
%   coloringBook('olaf.png','crayon.xlsx')
%           Output file should be identical to 'olaf_retro_soln.png'
%
%--------------------------------------------------------------------------
% Drill Problem #5: mosaic
%
%   mosaic('falcons.png', 4)
%           Output file should be identical to 'falcons4x4_soln.png'.
%
%   mosaic('falcons.png', 50)
%           Output file should be identical to 'falcons50x50_soln.png'.
%
%   mosaic('batman.png', 100)
%           Output file should be identical to 'batman100x100_soln.png'.
%
%   mosaic('smith.png', 50)
%           Output file should be identical to 'smith50x50_soln.png'.
%
%--------------------------------------------------------------------------
% Drill Problem #6: wheresWaldo
%
%
%   wheresWaldo('train.png', 'waldo1.png');
%           Output file should be identical to 'train_foundhim_soln.png'.
%
%   wheresWaldo('beach.png', 'waldo2.png');
%           Output file should be identical to 'beach_foundhim_soln.png'.
%
%   wheresWaldo('circus.png', 'waldo3.png');
%           Output file should be identical to 'circus_foundhim_soln.png'.
%
%--------------------------------------------------------------------------
% EXTRA CREDIT: colorByNum
%
%   load('colors.mat')
%
%   colorByNum('smallTest.jpg', pureRGB);
%           Output file should be identical to 'smallTest_colored_soln.jpg'
%
%   colorByNum('bigTest.jpg', pureRGB);
%           Output file should be identical to 'bigTest_colored_soln.jpg'
%
%   colorByNum('turtleOutline.jpg', turtle);
%           Output file should be identical to 'turtleOutline_colored_soln.jpg'
%
%   colorByNum('marioOutline.jpg', mario);
%           Output file should be idential to 'marioOutline_colored_soln.jpg'
%
%==========================================================================
% Click of the Week!!
%--------------------------------------------------------------------------
%
%   http://iwastesomuchtime.com/on/?i=58134
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
