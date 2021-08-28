function all_Double = replaceNaN(both_arr, only_int)

mask_index = isnan(both_arr);
both_arr(mask_index) = only_int(mask_index);
%   creates a mask index of where the first array has NaN's and slices the
%   two arrays together by using the mask as an index of where to replace.

all_Double = both_arr;

end