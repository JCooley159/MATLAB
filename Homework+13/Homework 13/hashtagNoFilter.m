function hashtagNoFilter(top, bot, blend)

T = imread(top);
B = imread(bot);
blend = lower(blend);

rtop = double(T(:,:,1)) ./ 255;
gtop = double(T(:,:,2)) ./ 255;
btop = double(T(:,:,3)) ./ 255;
topch = cat(3,rtop,gtop,btop);

rbot = double(B(:,:,1))./255;
gbot = double(B(:,:,2))./255;
bbot = double(B(:,:,3))./255;
botch = cat(3,rbot,gbot,bbot);

if strcmp(blend, 'multiply')
    out = topch .* botch;
elseif strcmp(blend, 'screen')
    out = 1 - ((1-topch) .* (1-botch));
elseif strcmp(blend, 'overlay')
    newrbot = rbot .* 255;
    newgbot = gbot .* 255;
    newbbot = bbot .* 255;
    luminance = (0.3 .* newrbot) + (0.59 .* newgbot) + (0.11 .* newbbot);
    lumiNORM = luminance ./ 255;
    if lumiNORM < 0.5
        out = 2.*topch.*botch;
    else
        out = 1 - (2.*(1-topch).*(1-botch));
    end
end

outimg = uint8(out .* 255);

top = top(1:end-4);
bot = bot(1:end-4);
newName = [top, '_', bot, '_', blend, '.png'];

imwrite(outimg, newName);

end