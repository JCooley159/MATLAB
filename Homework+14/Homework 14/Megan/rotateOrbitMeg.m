function newLoc = rotateOrbitMeg(loc,theta)

loc = loc';

newLoc = [cosd(theta) -sind(theta) 0; sind(theta) cosd(theta) 0; 0 0 1] * ...
    loc;

newLoc = newLoc';
end