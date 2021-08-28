function [made_struct] = myStruct(ca)

% Gets the field names and number of fields to establish in the structure
fields = ca(1, 1:2:end-1);
[~, M] = size(fields);

% Gets the number of values to have in each field based on the max number
% of values in each of the even-numbered cells of the original array.
num_of_values = [];
for n = 2:2:M
    [~, var] = size(ca{n});
    num_of_values = [num_of_values, var];
end
num_of_values = max(num_of_values);

% Iterates through the fields and values to add them to the structure. If
% the even-numbered cell only contains one value, it adds that value to all
% of the places in that field.
for i = 1:M
    values = ca{1, (i .* 2)};
    for h = 1:num_of_values
        [~, size_of_values] = size(values);
        if size_of_values == 1
            made_struct(h).(fields{i}) = values{1};
        else
            made_struct(h).(fields{i}) = values{h};
        end
    end
end


end