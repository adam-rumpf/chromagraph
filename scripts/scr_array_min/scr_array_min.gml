/// @func scr_array_min(arr)
/// @desc Returns the minimum element of an array.
/// @param {real[]} arr Array of numerical values.
/// @return {real} Minimum element of array.

// Rename argument
var arr = argument[0];

// Process each element to find the smallest
var minimum = infinity;
for (var i = 0; i < array_length_1d(arr); i++)
	minimum = min(minimum, arr[i]);

return minimum;
