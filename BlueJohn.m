function BlueJohn (img1)

orig = imread(img1);

r = orig(:,:,1);
g = orig(:,:,2);
b = orig(:,:,3);


change_to_white = r >= 180 & g >= 180 & b >= 180;

r(change_to_white) = 255;
g(change_to_white) = 255;
b(change_to_white) = 255;

change_to_blue = r >= 150 & r < 255;

r(change_to_blue) = 0;
g(change_to_blue) = 162;
b(change_to_blue) = 232;

new_img = cat(3,r,g,b);
img_name = 'NewBlueJohn.jpg';

imwrite(new_img,img_name);

end