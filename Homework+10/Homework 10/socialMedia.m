function [most_addicted] = socialMedia (sa)

% Calculates the score for each social medium. (according to the formula)
fb_score = ((sa(1).Facebook).*(sa(4).Facebook))./((sa(2).Facebook)+(sa(3).Facebook));

tw_score = ((sa(1).Twitter).*(sa(4).Twitter))./((sa(2).Twitter)+(sa(3).Twitter));

in_score = ((sa(1).Instagram).*(sa(4).Instagram))./((sa(2).Instagram)+(sa(3).Instagram));

% Puts all three scores in a vector and finds the index of the medium 
% with the highest score.
score_vec = [fb_score, tw_score, in_score];
[~, index] = max(score_vec);

% Returns a string of the medium with the highest score.
if index == 1
    most_addicted = 'Facebook';
elseif index == 2
    most_addicted = 'Twitter';
elseif index == 3
    most_addicted = 'Instagram';
end
end