function [studytime,pgrade,coefficient] = maxGradeMinTime(time,cgrade)

% Find the second derivative of the grades vs. time
deriv = diff(cgrade)./diff(time);
diffy2 = diff(deriv);
diffx2 = diff(time(2:end));
second = diffy2./diffx2;

% Amount of time to study to maximize grade
studytime = interp1(second,time(2:end),0);

% Predicted grade based on study time
pgrade = interp1(time,cgrade,studytime);

% calculate the coefficient of performance
coefficient = pgrade./studytime.*max(time);

end