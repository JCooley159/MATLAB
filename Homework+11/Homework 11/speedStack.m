function [pyramid, val] = speedStack(length, chr)
    pyramid = speedS(length, chr, length); %Creates a duplicate input of the length value
end 
function [pyramid] = speedS(length, chr, originLength)
    if length == 1 %Terminating condition set
        spaces = blanks(originLength); 
        pyramid = [spaces chr];
    else
        string = '';
        i = 1;
        for i = 1:length 
            string = [string ' ' chr]; %Creates a string of the set character for each line
        end
        value = originLength - length; %Amount of spaces needed before each line
        spaces = blanks(value); %Creates spaces
     pyramid = [speedS((length-1), chr, originLength) char(10) spaces string]; %Concatenates and calls the function with decreasing length
    end
end