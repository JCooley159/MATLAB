function [proot, nroot] = quad(a, b, c)
% quad - evaluates the two roots, or zeroes, of a quadratic 
%      polynomial funtion.

inside = (b).^2 - (4.* a.* c);
% I use inside as a helper function to make the proot and nroot
%   equations less cluttered.

proot = ((-b) + sqrt(inside))/(2.* a);
nroot = ((-b) - sqrt(inside))/(2.* a);
% This is where the magic /actually/ happens.
end