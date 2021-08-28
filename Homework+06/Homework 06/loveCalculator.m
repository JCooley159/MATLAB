function loveScore = loveCalculator (name1, name2)

if strcmp(name1, name2) == 1
    loveScore = 0;
elseif strfind(name1, name2) ~= []
    loveScore = 0;
elseif strfind(name2, name1) ~= []
    loveScore = 0;
end

L = length([strfind(name1, 'l'), strfind(name2, 'l')]);
O = length([strfind(name1, 'o'), strfind(name2, 'o')]);
V = length([strfind(name1, 'v'), strfind(name2, 'v')]);
E = length([strfind(name1, 'e'), strfind(name2, 'e')]);
S = length([strfind(name1, 's'), strfind(name2, 's')]);

vec1 = [L, O, V, E, S];
vec2 = vec1(1:4) + vec1(2:5);
vec3 = vec2(2:4) + vec2(1:3);
vec4 = vec3(1:2) + vec3(2:3);

% Puts the two numbers together as a string, and then converts them beck
% into numbers (class double)
loveScore = [num2str(vec4(1)), num2str(vec4(2))];
loveScore = str2num(loveScore);

end