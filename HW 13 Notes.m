%Resizing
img = imread('uga.jpg');
[rows, cols, ~] = size(img);
newRow = round(linspace(1,rows,.5.*rows));
newCol = round(linspace(1,cols,.5.*cols));
newimg = img(newRow,newCol,:);

%change red to gold and black to blue
black = [0 0 0];
red = [239 46 37];
blue = [0 0 164];
gold = [215 172 2];
blackmask = (img(:,:,1)==black(1) & img(:,:,2)==black(2) & img(:,:,3)==black(3));
redmask = (img(:,:,1)==red(1) & img(:,:,2) == red(2) & img(:,:,3)==red(3));
newR = img(:,:,1);
newG = img(:,:,2);
newB = img(:,:,3);
newR(blackmask) = blue(1);
newG(blackmask) = blue(2);
newB(blackmask) = blue(3);
newR(redmask) = gold(1);
newG(redmask) = gold(2);
newB(redmask) = gold(3);
newimg = cat(3,newR,newG,newB);
imshow(newimg);

% Rotating
% 90º counterclockwise rotation
r = img(:,:,1);
g = img(:,:,2);
b = img(:,:,3);
Rccw90 = r';
Gccw90 = g';
Bccw90 = b';
newR = Rccw90(end:-1:1, :);
newG = Gccw90(end:-1:1, :);
newB = Bccw90(end:-1:1, :);
newimg = cat(3, newR,newG, newB);
imshow(newimg)
% to rotate clockwise:
% newR = Rccw90(:, end:-1:1);

% if r g b values are the same, grayscale
% To grayscale, convert to double, add r g b values together, divide by 3
% and set new r g b values to result
