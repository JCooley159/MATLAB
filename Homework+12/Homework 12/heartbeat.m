function [integral, condition] = heartbeat (xval, yval, norm)

xval = abs(x);
yval = abs(yval);

integral = trapz(xval, yval);

norm = sort(norm);
if integral < norm(1)
    condition = 'Low Blood Pressure';
elseif integral >= norm(1) && integral <= norm(2)
    condition = 'Normal Blood Pressure';
elseif integral > norm(2)
    condition = 'High Blood Pressure';
end

end