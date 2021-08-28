function [weapon, rupees] = datHookshotDoe (start, directions, distance, letters, rupeeArr)
% Initializes the output variables and makes the starting index into
%   numbers to use
x = start(1)
y = start(2)
weapon = ''
rupees = 0
destination = false

% Works until it finds that the value of the directions array == D, where it
%   stops, because it makes the destination = true, stopping the loop
while (~destination)
    % Adds the "found" letters and rupee values to the end total/string
    rupees = rupees + rupeeArr(x,y)
    weapon = [weapon letters(x,y)]
    
    % If the directions are west or north, subtracts the distance
    if (directions(x,y) == 'W' || directions(x,y) == 'N')
        dist = 0 - distance(x,y)
    else
        dist = distance(x,y)
    end
    % Ends the loop if it = D
    if (directions(x,y) == 'D')
        destination = true
    end
    if (directions(x,y) == 'N' || directions(x,y) == 'S')
        x = x + dist
    else
        y = y + dist
    end
end
end