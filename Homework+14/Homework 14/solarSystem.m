function solarSystem

rad_vec = [12,2,4,4,2.5,9];
pos_ca = {[0,0,0];[19,0,0];[28,0,0];[40,0,0];[52,0,0];[76,0,0]};
planets_ca = {'nicolas 1.jpg';'nicolas 2.jpg';'nicolas 3.jpg';'nicolas 4.png';'nicolas 5.png';'nicolas 6.jpg'};


go = true;
count = 0;

while go
        
    makePlanet(pos_ca{1}, rad_vec(1), planets_ca{1});
    hold on
    axis equal
    axis([-100 100 -100 100 -100 100])
    axis off
    whitebg([.6 .4 .6])
    view([69 30])
    makePlanet(pos_ca{2}, rad_vec(2), planets_ca{2});
    makePlanet(pos_ca{3}, rad_vec(3), planets_ca{3});
    makePlanet(pos_ca{4}, rad_vec(4), planets_ca{4});
    makePlanet(pos_ca{5}, rad_vec(5), planets_ca{5});
    makePlanet(pos_ca{6}, rad_vec(6), planets_ca{6});
    
    pause(0.015)
        
    
    pos_ca{2} = rotateOrbit(pos_ca{2}, 10);
    pos_ca{3} = rotateOrbit(pos_ca{3}, 3);
    pos_ca{4} = rotateOrbit(pos_ca{4}, 6);
    pos_ca{5} = rotateOrbit(pos_ca{5}, 8);
    pos_ca{6} = rotateOrbit(pos_ca{6}, 5);
    
    
    count = count + 1;
    if count == 1
        go = false;
    end
    hold off
end
    
end


%EXTRA CREDIT ADDITIONS/CODE CHANGES HERE:
% I tried to include all 10 planets (without the moon) and put the mapped
% images on them, but because it ran so slowly, I reduced the number of 
% planets and replaced those with pictures of Nicolas Cage.
%
% Changed the background color
% Changed speed of planets
% Made a planet have a tilted axis of rotation/up-down rotation
% Added images to the sun and all planets
%