function [ volume, SurfArea ] = volCyl( r, h )
%volCyl - finds volume of a cylinder
%   Finds volume of a cylinder given radius, r, and height, h.
topArea = pi * r^2;
volume = h * topArea;
side = 2*pi*r*h;
SurfArea = (side) + (2*topArea);
end

