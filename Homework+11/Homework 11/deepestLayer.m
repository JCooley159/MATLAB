function [contents] = deepestLayer(nest_cell)

% If the class of the given varible isn't cell, then it outputs it.
% Otherwise, the function recurses through to find whatever's there.
if strcmp(class(nest_cell), 'cell') == 0
    contents = nest_cell;
else
    contents = deepestLayer(nest_cell{1});
end

end