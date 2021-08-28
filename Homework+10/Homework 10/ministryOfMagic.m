function [Daily_Prophet] = ministryOfMagic(dark_wizard, aurors)

dw_handle = fopen(dark_wizard);
line = fgetl(dw_handle);
wiz_name = line;
tw_power = 0;

while ischar(line)
    line = lower(line);
    if ~isempty(strfind(line, 'dark'))
        dw_power = length(strfind(line, 'dark')) .* 2;
        tw_power = tw_power + dw_power;
    end
    if ~isempty(strfind(line, 'cruciatus'))
        dw_power = length(strfind(line, 'cruciatus')) .* 2;
        tw_power = tw_power + dw_power;
    end
    if ~isempty(strfind(line, 'lord'))
        dw_power = length(strfind(line, 'lord')) .* 2;
        tw_power = tw_power + dw_power;
    end
    if ~isempty(strfind(line, 'death'))
        dw_power = length(strfind(line, 'death')) .* 2;
        tw_power = tw_power + dw_power;
    end
    
    line = fgetl(dw_handle);
end

[~, num_of_aur] = size(aurors);
au_power_levels = [];
HP_or_nah = [];
for i = 1:num_of_aur
    aur_power = aurors(i).strength + aurors(i).rank + (aurors(i).experience ./ 2);
    au_power_levels = [au_power_levels, aur_power];
    find_HP = strcmp(aurors(i).name, 'Harry Potter');
    HP_or_nah = [HP_or_nah, find_HP];
end



if strcmp(wiz_name, 'Voldemort') == 1 && any(HP_or_nah == 1)
    auror_to_send = 'Harry Potter'
    Daily_Prophet = sprintf('The Ministry of Magic Department of Magical Law Enforcement dispatched Harry Potter to take on Voldemort. Harry Potter absolutely destroyed Voldemort.');
elseif ~isempty(find(au_power_levels > tw_power))
    indices = find(au_power_levels > tw_power);
    au_higher_powers = au_power_levels(indices);
    [ats_power, ~] = min(au_higher_powers);
    auror_index = find(au_power_levels == ats_power)
    auror_index = auror_index(1)
    auror_to_send = aurors(auror_index).name;
    Daily_Prophet = sprintf('The Ministry of Magic Department of Magical Law Enforcement dispatched %s to take on %s. %s succeeded in apprehending %s.', auror_to_send, wiz_name, auror_to_send, wiz_name);
elseif isempty(find(au_power_levels > tw_power))
    [~, auror_index] = max(au_power_levels);
    auror_to_send = aurors(auror_index).name;
    Daily_Prophet = sprintf('The Ministry of Magic Department of Magical Law Enforcement dispatched %s to take on %s. %s failed to apprehend %s.', auror_to_send, wiz_name, auror_to_send, wiz_name);
end

fclose(dw_handle);

end