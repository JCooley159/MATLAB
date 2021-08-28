function [area, condition] = heartbeat(x,y,range)
% Need to make any negative areas positive.
x = abs(x);
y = abs(y);

% Find area under curve
area = trapz(x,y);

% Compare area to range
if area < range(1)
    condition = 'Low Blood Pressure';
elseif area >= range(1) && area <= range(2)
    condition = 'Normal Blood Pressure';
else
    condition = 'High Blood Pressure';
end

end