function [applied] = colorScreen(one,two,replace)
%Goal: replace pixels in 'fore' that match value in 'replace' with the
%corresponding pixels in 'back'.

% Read in the foreground and background images.
fore = imread(one);
back = imread(two);
% get the layers of the foreground image.
fred = fore(:,:,1);
fgreen = fore(:,:,2);
fblue = fore(:,:,3);

% Find where the red values in the fore image are equal to the first value in
% replace
R = fred == replace(1);

% Find where the green values in fore image are equal to the second value
% in replace
G = fgreen == replace(2);

% Find where the blue values in fore are equal to the last value in replace
B = fblue==replace(3);

mask = R&G&B;
mask = cat(3,mask,mask,mask);
fore(mask) = back(mask);
applied = fore;
end