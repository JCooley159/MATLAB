function outcome = rPSL (p1_info, p2_info)

% Separates the two info strings into their components so that we can use
% them to compare.
[p1_name, p1_info] = strtok(p1_info, '-');
p1_move = p1_info(2:end);
[p2_name, p2_info] = strtok(p2_info, '-');
p2_move = p2_info(2:end);

% Systematically goes through each outcome to find which case is true, and
% then outputs the desired string.
if strcmp(p1_move, p2_move) == 1 && strcmp(p1_move, 'Love') == 1
    outcome = sprintf('Love conquers all! %s and %s both win.', p1_name, p2_name);
elseif strcmp(p1_move, p2_move) == 0 && strcmp(p1_move, 'Love') == 1
    outcome = sprintf('Love conquers all! %s wins.', p1_name);
elseif strcmp(p1_move, p2_move) == 0 && strcmp(p2_move, 'Love') == 1
    outcome = sprintf('Love conquers all! %s wins.', p2_name);
elseif strcmp(p1_move, p2_move) == 1 && strcmp(p1_move,'Love') == 0 && strcmp(p2_move,'Love') == 0
    outcome = 'Tie, try again.';
elseif strcmp(p1_move,'Rock') == 1 && strcmp(p2_move,'Paper') == 1
    outcome = sprintf('Paper beats rock. %s wins.', p2_name);
elseif strcmp(p1_move,'Rock') == 1 && strcmp(p2_move,'Scissors') == 1
    outcome = sprintf('Rock beats scissors. %s wins.', p1_name);
elseif strcmp(p1_move,'Paper') == 1 && strcmp(p2_move,'Rock') == 1
    outcome = sprintf('Paper beats rock. %s wins.', p1_name);
elseif strcmp(p1_move,'Paper') == 1 && strcmp(p2_move,'Scissors') == 1
    outcome = sprintf('Scissors beats paper. %s wins.', p2_name);
elseif strcmp(p1_move,'Scissors') == 1 && strcmp(p2_move,'Paper') == 1
    outcome = sprintf('Scissors beats paper. %s wins.', p1_name);
elseif strcmp(p1_move,'Scissors') == 1 && strcmp(p2_move,'Rock') == 1
    outcome = sprintf('Rock beats scissors. %s wins.', p2_name);
end
end