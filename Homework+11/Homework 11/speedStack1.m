function [pyramid] = speedStack(base_length, p_char)

count = 0;
[base_length2] = countFunc(base_length, count);
char_length = (base_length .* 2) - 1;
pyramid = zeros(1, char_length);

for i = 1:base_length
    if i == 1
        p_line = p_char;
    else
        p_line = [p_line, ' ', p_char];
    end
    
    lineLength = length(p_line);
    spaces_size = (char_length - lineLength) ./ 2;
    spaces_vec = [];
    for j = 1:spaces_size
        spaces_vec = [spaces_vec, ' '];
    end
    
    p_line = [spaces_vec, p_line, spaces_vec];
    
    pyramid = [pyramid; p_line];
end

pyramid = pyramid(2:end, :);

end

function [count] = countFunc(base_length, count)
    
if base_length == 0
    count = count;
else
    count = countFunc(base_length - 1, count + 1);
end    

end