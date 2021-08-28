function [canfind, separation] = sixDegreesOfWaldo (inperson)
tracker = 0;
allfields = fieldnames(inperson);
canfind = false;
    for i = 1:length(allfields)
        if strcmp(inperson.(allfields{i}), 'Waldo')
            canfind = true;
            separation = tracker;
        end
    end
if canfind == true
    candfind = canfind;
    separation = separation;
else
    friendlist = {inperson.Friends};
    [canfind, separation] = findyou(inperson, tracker, friendlist, canfind);
end
end

function [canfind, separation] = findyou(inperson, tracker, friendlist, canfind);
if isempty(friendlist)
    canfind = false;
    separation = 0;
elseif canfind == true
    canfind = true;
    separation = tracker;
else
  for m = 1:length(friendlist)
      infriends = friendlist{m};
    for j = 1:length(infriends)
        allfields = fieldnames(infriends(j));
        for k = 1:length(allfields)
            if strcmp(infriends(j).(allfields{k}),'Waldo')
                canfind = true;
                separation = tracker;
            end
        end
    end
  end
    newfriendlist = [];
    for l = 1:length(friendlist)
        ininfriends = friendlist{l};
        for n = 1:length(ininfriends)
            fof = ininfriends(n).Friends;
            newfriendlist = [newfriendlist {fof}];
        end
    end
    friendlist = newfriendlist;
    tracker = tracker + 1;
    [canfind, separation] = findyou(inperson, tracker, friendlist, canfind);
end
end

    