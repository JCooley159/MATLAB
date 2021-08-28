function [new_pos] = rotateOrbit(init_pos, theta)

init_pos = init_pos';

rot_mtrx = [cosd(theta), -1 .* sind(theta), 0; sind(theta), cosd(theta), ...
    0; 0, 0, 1];

new_pos = rot_mtrx * init_pos;

new_pos = new_pos';


end