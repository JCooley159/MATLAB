function [out] = drawTree(startSize)
    if startSize < 0
        numOfBranches = 'invalid input';
    else
        plot([0,0],[0,startSize],'b')
        hold on
        [numOfBranches] = makeFractal(startSize, 0, startSize, 0, 45);
        [numOfBranches2] = makeFractal(startSize, 0, startSize, 0, -45);
        out = numOfBranches + numOfBranches2 + 3;
    end
end

function currBranches = makeFractal(size, startX, startY, currBranches, bigAngle)
%makes a fractal tree of lines starting with
newX = startX + 0;
newY = startY + size;
%rotate the point
tempX = newX-startX;
tempY = newY-startY;
temp = [tempX; tempY];
rot = [cosd(bigAngle), -sind(bigAngle); sind(bigAngle), cosd(bigAngle)];
rotatedPoints = rot * temp;
newX = rotatedPoints(1) + startX;
newY = rotatedPoints(2) + startY;
currBranches
if size < 1
    plot([startX,newX],[startY,newY],'g')
else
    plot([startX,newX],[startY,newY],'b')
    currBranches = makeFractal(size*.5, newX, newY, currBranches+1, bigAngle + 45);
    currBranches = makeFractal(size*.5, newX, newY, currBranches+1, bigAngle - 45);
end

end