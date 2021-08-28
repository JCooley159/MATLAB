function [B] = backCalculate (A, Hyp)
% backCalculate - Uses a derivation of the Pythagorean Theorem, solved for
% one of the leg sides, to calculate the length of that leg.

B = sqrt((Hyp)^2 - (A)^2);
% I used algebra to subtract A^2 from both sides, and then I square rooted
% both sides to find the length, or magnitude, of B, the second leg. (side)
    
end