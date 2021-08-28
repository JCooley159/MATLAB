function makePlanetMeg(loc,rad,image)
img = imread(image);
img = flipud(img);

x = loc(1);
y = loc(2);
z = loc(3);

[a,b,c] = sphere;

a = rad.*a;
b = rad.*b;
c = rad.*c;

surf(a+x,b+y,c+z,img, 'FaceColor', 'texturemap','Edgecolor', 'none');

hold on
end