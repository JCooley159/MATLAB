function [vec_mean] = meanNonZero(vecN)

nonZero_Index = vecN ~= 0;
nonZero_vec = vecN(nonZero_Index);
% creates a logical index vector of the nonzero terms in the given vector
% and creates a new vector of those terms.

vec_mean = (sum(nonZero_vec))/(length(nonZero_vec));
% finds the mean (aka average) by adding up all of the nonzero values and
% divides the sum by the number of nonzero values.
end