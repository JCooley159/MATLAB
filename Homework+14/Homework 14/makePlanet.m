function makePlanet(position, radius, img_name)

 
C = imread(img_name);
C = flipud(C);


x_pos = position(1);
y_pos = position(2);
z_pos = position(3);

[x, y, z] = sphere;
x = radius .* x;
y = radius .* y;
z = radius .* z;

surf(x + x_pos, y + y_pos, z + z_pos, C, 'FaceColor', 'texturemap', 'Edgecolor', 'none');
hold on

end