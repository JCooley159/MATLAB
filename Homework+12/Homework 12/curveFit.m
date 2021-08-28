function curveFit(xs, ys, order)

coeff = polyval(xs,ys,order);


subplot(2,2,1)
title('Original Data')
plot(xs,ys)

subplot(2,2,2)
title('Polynomial Fit')
y2 = polyfit(coeff,xs)
plot(xs,y2)

subplot(2,2,3)
title('Integral')
int = coeff ./ (length(coeff):-1:1);
int(end+1) = 0;
plot(xs,int)

subplot(2,2,4)
title('Derivative')
der = coeff.*(length(coeff)-1:-1:0);
der(end) = [];
plot(xs,int)



end