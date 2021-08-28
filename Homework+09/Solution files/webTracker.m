function winIP = noLife(log,inmonth)
[~,~,raw] = xlsread(log); %Read in xls sheet

switch inmonth            % Determine the numeric month
    case 'January'
        inmonth = '1';
    case 'February'
        inmonth = '2';    
    case 'March'
        inmonth = '3';
    case 'April'
        inmonth = '4';
    case 'May'
        inmonth = '5';
    case 'June'
        inmonth = '6';
    case 'July'
        inmonth = '7';
    case 'August'
        inmonth = '8';
    case 'September'
        inmonth = '9';
    case 'October'
        inmonth = '10';
    case 'November'
        inmonth = '11';
    case 'December'
        inmonth = '12';
end    

% Create unique IP address list
IPlist = sort(raw(2:end,2));
doloop = true; %Initialize loop condition
ind = 1;
currentIP = IPlist{ind};        %Set the current unique IP
while doloop
    if strcmpi(IPlist{ind+1},currentIP) 
        IPlist(ind+1)=[];   %Erase if same IP, and then check next one
    else
        ind = ind+1;        %If new unique found, that is now the current IP
        currentIP = IPlist{ind};
    end
    if ind+1 > length(IPlist)   %We don't want indices go to out of bounds
        doloop = false;
    end
end

% Now, remove months that are irrelevant
%Pre-allocate a mask
mask = true(size(raw,1)-1,1);
for ind = 2:size(raw,1);
    [month, rest]=strtok(raw{ind,1},'/');   %Extract month in the log
    if ~strcmp(month,inmonth)               %If month doesn't match
        mask(ind-1) = false;    %We set it to FALSE so we DON'T remove it later
    end
end
mask = [false false false;mask mask mask]; %Create the mask that is the same orientation as raw cell array
raw = raw(mask);
raw = reshape(raw,length(raw)/3,3);
minsvec = [raw{1:end,3}];
allIP = raw(1:end,2);
% Preallocate mins spent vector which will correspond to IPlist
minsspent = zeros(1,length(IPlist));
for ind = 1:length(IPlist)
    where = strcmpi(IPlist{ind},allIP);   %Find the entries with the current IP of interest
    minsspent(ind) = sum(minsvec(where));   %Sum up all the numbers
end
[~,j] = max(minsspent);
winIP = IPlist{j};
end