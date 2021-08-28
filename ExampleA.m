function [out] = ExampleA(vec)

revhalf1 = vec((end ./ 2):-1:1);
revhalf2 = vec(end:-1:((end ./ 2) + 1));

out = [revhalf1, revhalf2];
end