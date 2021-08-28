function [total_cost] = dormTape(totBlocks, gold, white, blue, one_roll)
%              Jeremy Cooley             Jan 21, 2015

% dormTape - used to calculate the total cost of applying colored tapes in
%    one's dorm room, based on multiple factors

%Gold:
gold_blocks = gold .* totBlocks;
                % (color ratio) * # of total blocks = # of blocks
gold_rolls = gold_blocks ./ one_roll;
                % # blocks / (blocks/roll) = # rolls
gold_rolls = ceil(gold_rolls);
                % rounds the # of rolls to the nearest whole roll
gold_cost = gold_rolls .* 4.99;
                % rolls * (price/roll) = color price

%White:
white_blocks = white .* totBlocks;
white_rolls = white_blocks ./ one_roll;
white_rolls = ceil(white_rolls);
white_cost = white_rolls .* 2.99;

%Blue:
blue_blocks = blue .* totBlocks;
blue_rolls = blue_blocks ./ one_roll;
blue_rolls = ceil(blue_rolls);
blue_cost = blue_rolls .* 3.99;

% Tax & Subtotal
subtotal = gold_cost + white_cost + blue_cost;
tax = subtotal .* 0.08;

total_cost = round((subtotal + tax).* 10.^2) ./ 10.^2;
                % finds the total cost, then rounds to the nearest cent, 
                % and converts it back into dollars
end