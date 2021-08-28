function [most_improve, targ_YesNo, totPerWeek] = runBabyRun(target, mpd)

most_improve = max(max(diff(mpd')));
%   finds the max of the max of the differences in the weeks

targ_YesNo = any(any(mpd >= target));
%   finds if any of the values is >= the target

totPerWeek = sum(mpd');
%   sums downward into a horiz vector

end