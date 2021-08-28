function[combo_vec] = interweave(vec1xN, vec1xM)
N = length(vec1xN);
M = length(vec1xM);
% These serve as scalar variables for the lengths of the two vectors.

comp_length = [N, M];
% Instead of trying to learn how to use an if/then statement in MATLAB, I
% just put the two lengths into a vector and found the greater on with the
% max function.

pre_combo_vec = zeros(1, 2 .* max(comp_length));
% The length of the combo_vec is given in the drill problems pdf

pre_combo_vec(1:2:(2 .* N)) = vec1xN(1:1:N);
pre_combo_vec(2:2:(2 .* M)) = vec1xM(1:1:M);
% This actually replaces the odd indices with the N vector and the even
% indices with the M vector, while leaving zeroes in the spaces of
% differences.

combo_vec = pre_combo_vec;
end


