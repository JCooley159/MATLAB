function [f_l_sorted] = gradeSorter(grades_vec, first_vec, last_vec)

[~, g_indexes] = sort(grades_vec, 'descend');
% We don't need the grades at all, just their matching indices!

element_num = (3 .* length(first_vec)) - 1;
f_l_sorted = ones(1, element_num);
% Finds the total # of columns needed to create for each of the initials
% and the spaces in between, then creates a row vector of ones that can be
% replaced.

f_l_sorted(1:3:end) = first_vec(g_indexes);
f_l_sorted(2:3:end) = last_vec(g_indexes);
f_l_sorted(3:3:(end -2)) = ' ';
% Replaces the ones from the vector with a pattern of first initial, last
% initial, ' '.

f_l_sorted = char(f_l_sorted);
% Converts everything back into characters b/c they get turned into numbers
% out of nowhere.
end