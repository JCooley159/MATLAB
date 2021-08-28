function solarSystemMeg
image = {'sun.jpg','star5.jpg'};
loc = {[0,0,0];[6.3,0,0];[8.3,0,0];[10.8,0,0];[13,0,0]};
rad = [3.5, 0.6, 0.7, 0.9, 0.8];
go = true;

while go
    makePlanetMeg(loc{1},rad(1),image{1});
    hold on
    axis equal
    axis([-23 23 -23 23])
    axis off
    whitebg([.3 .5 .8])

    makePlanetMeg(loc{2},rad(2),image{2});
    makePlanetMeg(loc{3},rad(3),image{2});
    makePlanetMeg(loc{4},rad(4),image{2});
    makePlanetMeg(loc{5},rad(5),image{2});
       
    pause(0.015)
    
    loc{1} = rotateOrbitMeg(loc{1}, 30);
    loc{2} = rotateOrbitMeg(loc{2}, 25);
    loc{3} = rotateOrbitMeg(loc{3}, 21);
    loc{4} = rotateOrbitMeg(loc{4}, 19);
    loc{5} = rotateOrbitMeg(loc{5}, 17);
hold off
end

end