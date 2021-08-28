function [updated] = omgShoes(inventory, orders)

[M,N] = size(inventory);
[~,L] = size(orders);

for i = 1:M
    for j = 1:N
        for k = 1:L
            
            if strcmp(inventory(i,j).Model, orders(k).Model) == 1;
                order_size = orders(k).Size;
                index = find(inventory(i,j).Sizes == order_size);
                stock_vec = inventory(i,j).Stock;
                stock_vec(index) = stock_vec(index) - 1;
                new_stock_vec = stock_vec;
                inventory(i,j).Stock = new_stock_vec;
                
                if new_stock_vec(index) == 0
                    new_stock_vec(index) = [];
                    inventory(i,j).Stock = new_stock_vec;
                    size_vec = inventory(i,j).Sizes;
                    size_vec(index) = [];
                    new_size_vec = size_vec;
                    inventory(i,j).Sizes = new_size_vec;
                end
                
                if isempty(new_size_vec) == 1
                    inventory(i,j).Sizes = 'Out of Stock';
                    inventory(i,j).Stock = 'Out of Stock';
                end
                
            end
        end
    end
end
            
updated = inventory;
end