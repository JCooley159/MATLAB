function Animation_and_Plotting(input)
%    Animation
%__________________________________

% stop motion plots

% Problems:
%      - speed
%      - view
%      - scale of objects

% STEPS:
%    1. Collect Data to Plot:
%          - moving objects
%          - positions & size
%          - stationary objects
%    2. Plot (surf) data for current frame in loop:  (1), hold on, (2), (3), ...
%    3. Update moving object data (DO NOT PLOT)
%    4. Pause...
%    5. End Loop:    hold off

[x, y, z] = sphere();
surf(x, y, z);
hold on
surf(x+5, y+5, z+5);
surf(3.*x, 3.* y, 3.*z);
end

