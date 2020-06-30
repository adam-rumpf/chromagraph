/// @func scr_array_min_2d(arr)
/// @desc Returns the minimum element of a 2D array.
/// @param {real[]} arr 2D array of numerical values.
/// @return {real} Minimum element of array.

// Rename argument
var arr = argument[0];

// Process each element to find the smallest
var minimum = infinity;
for (var i = 0; i < array_height_2d(arr); i++)
{
	for (var j = 0; j < array_length_2d(arr, i); j++)
		minimum = min(minimum, arr[i,j]);
}

return minimum;
