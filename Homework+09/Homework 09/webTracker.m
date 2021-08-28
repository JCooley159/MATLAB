function [numberOneFan] = webTracker(spread, month)
    [num, txt, raw] = xlsread(spread);
    a = month;
    
    % Converts the month into a number with an if statement
    if strcmp(month,'January')
        monthNum = 1;
    elseif strcmp(month,'February')
        monthNum = 2;
    elseif strcmp(month,'March')
        monthNum = 3;
    elseif strcmp(month,'April')
        monthNum = 4;
    elseif strcmp(month,'May')
        monthNum = 5;
    elseif strcmp(month,'June')
        monthNum = 6;
    elseif strcmp(month,'July')
        monthNum = 7;
    elseif strcmp(month,'August')
        monthNum = 8;
    elseif strcmp(month,'September')
        monthNum = 9;
    elseif strcmp(month,'October')
        monthNum = 10;
    elseif strcmp(month,'November')
        monthNum = 11;
    else 
        monthNum = 12;
    end
    
    % Initializes the arrays and then adds each element to them.
    addressArray = {};
    minutesArray = [];
    indexArray = [];
    for i = 2:size(txt,1)
        date = txt{i, 1};
        indices = strfind(date, '/');
        date = date(1:indices(1)-1);
        if monthNum == str2num(date)
            indexArray = [indexArray i];
            address = [txt{i,2}];
            addressArray{i} = address;
            minute = raw{i,3};
            minutesArray = [minutesArray minute];
        end
    end
    
    finalMinArr = [];
    finalIPArr = {};
    for x = 1:length(indexArray)
        IP = txt{indexArray(x), 2};
        newIndexArr = [];
        for i = indexArray(1):indexArray(length(indexArray))
            if strcmp(addressArray{i}, IP)
                newIndexArr = [newIndexArr i-indexArray(1)+1];
            end
        end

        minutes = 0;
        for i = 1:length(newIndexArr)
            minutes = minutes + minutesArray(newIndexArr(i));
        end
        finalMinArr = [finalMinArr minutes];
        finalIPArr{x} = IP;
    end
    [val,index] = max(finalMinArr);
    numberOneFan = finalIPArr{index};
end
