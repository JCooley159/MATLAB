function [steady_state, percentTime] = findSS(data)

steady_state = 0;
percentTime = 0;
x = 1;
change = 0;
while change > 0.0005
    avg1 = (sum(data(x:end)))./(length(data(x:end)));
    while x <= (length(data) - 10)
        x = x + 10;
    end
    avg2 = (sum(data(x:end)))./(length(data(x:end)));
    change = (abs(avg2 - avg1))./(avg1);
    steady_state = (round(avg2.*100))./(100);
    percentTime = (round(10 .* ((length(data(x:end)))./(length(data))))) .* 100;
end


end