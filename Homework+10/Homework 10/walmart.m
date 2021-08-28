function [updated] = walmart(oldStruct, newPrices)

% Gets the number of values in the item list, M, and the number of prices
% to change, N, in the cell array. Also initializes items and costs.
[~, M] = size(oldStruct);
[N, ~] = size(newPrices);
items = [];
costs = [];

% Iterates through the items on both lists to find matches, and then
% replaces those old prices.
for i = 1:N
    for j = 1:M
        if strcmp(newPrices{i,1}, oldStruct(j).Item)
            oldStruct(j).Cost = newPrices{i,2};
        end
    end
end

% Sorts the items alphabetically and creates a new structure with the new
% item and price lists.
items = {oldStruct(:).Item}
costs = [oldStruct(:).Cost]
[sorted, indices] = sort(items)
costs = num2cell(costs(indices))
updated = struct('Item', (sorted), 'Cost', (costs));
end