function [y] = f(x)
% f - used to evaluate the function given in the drill problem. No, I'm not
%      writing it all out because it's too long. Deal with it. ;)

g = x .* abs(x);
% This is the given function for g in the drill problems

a = 1.17.* sqrt(1 + x.^0.9);
b = sinh(x.^2 - 4);
c = 1.6487 * exp(x.^2 - g);
% These are also helper functions that help to simplify and clean up the
%   code for the output variable, y.

y = (a + b)./(c);
end