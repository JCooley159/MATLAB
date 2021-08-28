function compatibility = matchZodiac (birthday1, birthday2)

% Separates the month and day of both peple so I can work with them more
% easily.
[month1, birthday1] = strtok(birthday1, ' ');
day1 = birthday1(2:end);
[month2, birthday2] = strtok(birthday2, ' ');
day2 = birthday2(2:end);

% Converts the day strings into numbers.
day1 = str2num(day1);
day2 = str2num(day2);

   % Finds the sign of the first person using a huge long 'if' statement.
if strcmp(month1, 'March') == 1 && day1 >= 21
    sign1 = 'Aries';
elseif strcmp(month1, 'April') == 1 && day1 <= 19
    sign1 = 'Aries';
elseif strcmp(month1, 'April') == 1 && day1 >= 20
    sign1 = 'Taurus';
elseif strcmp(month1, 'May') == 1 && day1 <= 20
    sign1 = 'Taurus';
elseif strcmp(month1, 'May') == 1 && day1 >= 21
    sign1 = 'Gemini';
elseif strcmp(month1, 'June') == 1 && day1 <= 20
    sign1 = 'Gemini';
elseif strcmp(month1, 'June') == 1 && day1 >= 21
    sign1 = 'Cancer';
elseif strcmp(month1, 'July') == 1 && day1 <= 22
    sign1 = 'Cancer';
elseif strcmp(month1, 'July') == 1 && day1 >= 23
    sign1 = 'Leo';
elseif strcmp(month1, 'August') == 1 && day1 <= 22
    sign1 = 'Leo';
elseif strcmp(month1, 'August') == 1 && day1 >= 23
    sign1 = 'Virgo';
elseif strcmp(month1, 'September') == 1 && day1 <= 22
    sign1 = 'Virgo';
elseif strcmp(month1, 'September') == 1 && day1 >= 23
    sign1 = 'Libra';
elseif strcmp(month1, 'October') == 1 && day1 <= 22
    sign1 = 'Libra';
elseif strcmp(month1, 'October') == 1 && day1 >= 23
    sign1 = 'Scorpio';
elseif strcmp(month1, 'November') == 1 && day1 <= 21
    sign1 = 'Scorpio';
elseif strcmp(month1, 'November') == 1 && day1 >= 22
    sign1 = 'Sagittarius';
elseif strcmp(month1, 'December') == 1 && day1 <= 21
    sign1 = 'Sagittarius';
elseif strcmp(month1, 'December') == 1 && day1 >= 22
    sign1 = 'Capricorn';
elseif strcmp(month1, 'January') == 1 && day1 <= 19
    sign1 = 'Capricorn';
elseif strcmp(month1, 'January') == 1 && day1 >= 20
    sign1 = 'Aquarius';
elseif strcmp(month1, 'February') == 1 && day1 <= 18
    sign1 = 'Aquarius';
elseif strcmp(month1, 'February') == 1 && day1 >= 19
    sign1 = 'Pisces';
elseif strcmp(month1, 'March') == 1 && day1 <= 20
    sign1 = 'Pisces';
end
    
  % Finds the sign of the second person in the same way. 
if strcmp(month2, 'March') == 1 && day2 >= 21
    sign2 = 'Aries';
elseif strcmp(month2, 'April') == 1 && day2 <= 19
    sign2 = 'Aries';
elseif strcmp(month2, 'April') == 1 && day2 >= 20
    sign2 = 'Taurus';
elseif strcmp(month2, 'May') == 1 && day2 <= 20
    sign2 = 'Taurus';
elseif strcmp(month2, 'May') == 1 && day2 >= 21
    sign2 = 'Gemini';
elseif strcmp(month2, 'June') == 1 && day2 <= 20
    sign2 = 'Gemini';
elseif strcmp(month2, 'June') == 1 && day2 >= 21
    sign2 = 'Cancer';
elseif strcmp(month2, 'July') == 1 && day2 <= 22
    sign2 = 'Cancer';
elseif strcmp(month2, 'July') == 1 && day2 >= 23
    sign2 = 'Leo';
elseif strcmp(month2, 'August') == 1 && day2 <= 22
    sign2 = 'Leo';
elseif strcmp(month2, 'August') == 1 && day2 >= 23
    sign2 = 'Virgo';
elseif strcmp(month2, 'September') == 1 && day2 <= 22
    sign2 = 'Virgo';
elseif strcmp(month2, 'September') == 1 && day2 >= 23
    sign2 = 'Libra';
elseif strcmp(month2, 'October') == 1 && day2 <= 22
    sign2 = 'Libra';
elseif strcmp(month2, 'October') == 1 && day2 >= 23
    sign2 = 'Scorpio';
elseif strcmp(month2, 'November') == 1 && day2 <= 21
    sign2 = 'Scorpio';
elseif strcmp(month2, 'November') == 1 && day2 >= 22
    sign2 = 'Sagittarius';
elseif strcmp(month2, 'December') == 1 && day2 <= 21
    sign2 = 'Sagittarius';
elseif strcmp(month2, 'December') == 1 && day2 >= 22
    sign2 = 'Capricorn';
elseif strcmp(month2, 'January') == 1 && day2 <= 19
    sign2 = 'Capricorn';
elseif strcmp(month2, 'January') == 1 && day2 >= 20
    sign2 = 'Aquarius';
elseif strcmp(month2, 'February') == 1 && day2 <= 18
    sign2 = 'Aquarius';
elseif strcmp(month2, 'February') == 1 && day2 >= 19
    sign2 = 'Pisces';
elseif strcmp(month2, 'March') == 1 && day2 <= 20
    sign2 = 'Pisces';
end

    % Finds the compatibility of the two people starting with an if
    % statement of the first person's sign, and then uses a switch
    % statement to find the compatibility based on the second person's
    % sign.
if strcmp(sign1, 'Aries') == 1
    switch sign2
        case {'Leo', 'Sagittarius'}
            compatibility = '100%';
        case {'Libra', 'Cancer', 'Capricorn'}
            compatibility = '25%';
        case {'Pisces', 'Taurus'}
            compatibility = 'Wild Card';
        otherwise
            compatibility = '50%';
    end
elseif strcmp(sign1, 'Taurus') == 1
    switch sign2
        case {'Virgo', 'Capricorn'}
            compatibility = '100%';
        case {'Scorpio', 'Leo', 'Aquarius'}
            compatibility = '25%';
        case {'Aries', 'Gemini'}
            compatibility = 'Wild Card';
        otherwise
            compatibility = '50%';
    end
elseif strcmp(sign1, 'Gemini') == 1
    switch sign2
        case {'Libra', 'Aquarius'}
            compatibility = '100%';
        case {'Virgo', 'Pisces', 'Sagittarius'}
            compatibility = '25%';
        case {'Taurus', 'Cancer'}
            compatibility = 'Wild Card';
        otherwise
            compatibility = '50%';
    end
elseif strcmp(sign1, 'Cancer') == 1
    switch sign2
        case {'Scorpio', 'Pisces'}
            compatibility = '100%';
        case {'Capricorn', 'Libra', 'Aries'}
            compatibility = '25%';
        case {'Leo', 'Gemini'}
            compatibility = 'Wild Card';
        otherwise
            compatibility = '50%';
    end
elseif strcmp(sign1, 'Leo') == 1
    switch sign2
        case {'Aries', 'Sagittarius'}
            compatibility = '100%';
        case {'Scorpio', 'Taurus', 'Aquarius'}
            compatibility = '25%';
        case {'Virgo', 'Cancer'}
            compatibility = 'Wild Card';
        otherwise
            compatibility = '50%';
    end
elseif strcmp(sign1, 'Virgo') == 1
    switch sign2
        case {'Taurus', 'Capricorn'}
            compatibility = '100%';
        case {'Pisces', 'Gemini', 'Sagittarius'}
            compatibility = '25%';
        case {'Libra', 'Leo'}
            compatibility = 'Wild Card';
        otherwise
            compatibility = '50%';
    end
elseif strcmp(sign1, 'Libra') == 1
    switch sign2
        case {'Gemini', 'Aquarius'}
            compatibility = '100%';
        case {'Aries', 'Capricorn', 'Cancer'}
            compatibility = '25%';
        case {'Virgo', 'Scorpio'}
            compatibility = 'Wild Card';
        otherwise
            compatibility = '50%';
    end
elseif strcmp(sign1, 'Scorpio') == 1
    switch sign2
        case {'Cancer', 'Pisces'}
            compatibility = '100%';
        case {'Taurus', 'Leo', 'Aquarius'}
            compatibility = '25%';
        case {'Libra', 'Sagittarius'}
            compatibility = 'Wild Card';
        otherwise
            compatibility = '50%';
    end
elseif strcmp(sign1, 'Sagittarius') == 1
    switch sign2
        case {'Aries', 'Leo'}
            compatibility = '100%';
        case {'Gemini', 'Virgo', 'Pisces'}
            compatibility = '25%';
        case {'Capricorn', 'Scorpio'}
            compatibility = 'Wild Card';
        otherwise
            compatibility = '50%';
    end
elseif strcmp(sign1, 'Capricorn') == 1
    switch sign2
        case {'Virgo', 'Taurus'}
            compatibility = '100%';
        case {'Cancer', 'Aries', 'Libra'}
            compatibility = '25%';
        case {'Sagittarius', 'Aquarius'}
            compatibility = 'Wild Card';
        otherwise
            compatibility = '50%';
    end
elseif strcmp(sign1, 'Aquarius') == 1
    switch sign2
        case {'Gemini', 'Libra'}
            compatibility = '100%';
        case {'Scorpio', 'Leo', 'Taurus'}
            compatibility = '25%';
        case {'Capricorn', 'Pisces'}
            compatibility = 'Wild Card';
        otherwise
            compatibility = '50%';
    end
elseif strcmp(sign1, 'Pisces') == 1
    switch sign2
        case {'Cancer', 'Scorpio'}
            compatibility = '100%';
        case {'Gemini', 'Sagittarius', 'Virgo'}
            compatibility = '25%';
        case {'Aries', 'Aquarius'}
            compatibility = 'Wild Card';
        otherwise
            compatibility = '50%';
    end
end
end
