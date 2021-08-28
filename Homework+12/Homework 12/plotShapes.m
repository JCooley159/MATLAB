function plotShapes(shape,erl,deg,translate)
% If shape is 'square' then erl is edge length.
% If shape is 'circle' then erl is diameter.
if strcmp(shape,'square')
    xvals = [0,erl,erl,0,0];
    yvals = [0,0,erl,erl,0];
    % Apply translation
    xvals = xvals + translate(1);
    yvals = yvals + translate(2);
    % Apply rotation
    xvals = xvals .* [cosd(deg), sind(deg); -sind(deg), cosd(deg)];
    yvals = yvals .* [cosd(deg), sind(deg); -sind(deg), cosd(deg)];
    plot(xvals,yvals,'k')
    axis square
elseif strcmp(shape,'circle') 
   theta = linspace(0,360);
   r = erl./2;
   x = r .* cosd(theta);
   y = r .* sind(theta);
   % Apply translation
   x = x + translate(1);
   y = y + translate(2);
   plot(x,y,'k')
end

end