function whoDoneIt = criminalMinds(sus1, sus2, sus3, sus4)

test2 = any(sus1 ~= sus2);
test3 = any(sus1 ~= sus3);
test4 = any(sus1 ~= sus4);
    % Tests to see if Suspect 1's responses differ from any of the others.
    % If one of the others (Suspects 2-4) is lying, then their response
    % will differ from Suspect 1's, (giving a 1 back) but Suspect 1's will 
    % match the other innocent victims' (giving a 0 back).
test1 = all([test2, test3, test4]);
    % If Suspect 1 is the criminal, sus1 will be different from the rest 
    % of the answers, and therefore all([a b c]) will be true.
sus_number = find([test1, test2, test3, test4], 1);
    % Finds the *first* 1, or true, of the group, and returns its position.
    % The positions of each of the tests correspond to the suspect that is
    % lying.

whoDoneIt = sprintf('Suspect #%d is lying.', sus_number);
end