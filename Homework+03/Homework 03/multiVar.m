function [zvec] = multiVar(xvec, yvec)
    numer = ((xvec) .* (yvec)) - ((sqrt(xvec)) ./ (yvec));
    denom = ( 3 .* (xvec)) + (yvec);
    % These just simplify and clean up the output equation. I made sure to
    % only use * and / operations with dots to prevent matrix math from
    % occuring.
    
zvec = (numer) ./ (denom);
end