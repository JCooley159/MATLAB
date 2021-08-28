function [compare] = checkImage(img1,img2)
%Read in the two images
first = imread(img1);
second = imread(img2);
% Test for what the sentence output should be
[row1,col1,~] = size(first);
[row2,col2,~] = size(second);
if ~isequal(row1,row2) || ~isequal(col1,col2)
    compare = 'The images have different dimensions.';
elseif row1==row2 && col1==col2
        r1 = double(first(:,:,1));
        r2 = double(second(:,:,1));
        g1 = double(first(:,:,2));
        g2 = double(second(:,:,2));
        b1 = double(first(:,:,3));
        b2 = double(second(:,:,3));
    if ~isequal(r1,r2) || ~isequal(g1,g2) || ~isequal(b1,b2)
        compare = 'The RGB values are different.';
        
        % If the values are different output an image where the same values are
        % white and the different values are black.

        newr = find(isequal(r1,r2));
        newg= find(isequal(g1,g2));
        newb= find(isequal(b1,b2));
        white = [255,255,255];
        newImg = zeros(row1,col1,3);
        newImg(newr) = white(1);
        newImg(newg) = white(2);
        newImg(newb) = white(3);
        newImg = uint8(newImg);
        imwrite(newImg,sprintf('%sVS%s.png', img1(1:end-4),img2(1:end-4)))
    else
        compare = 'The images are the same.';
    end
end

end