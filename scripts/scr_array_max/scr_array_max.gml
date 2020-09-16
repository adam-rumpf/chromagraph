/// @func scr_array_max(arr)
/// @desc Returns the maximum element of an array.
/// @param {real[]} arr Array of numerical values.
/// @return {real} Maximum element of array.

// Rename argument
var arr = argument[0];

// Process each element to find the smallest
var maximum = -infinity;
for (var i = 0; i < array_length_1d(arr); i++)
	maximum = max(maximum, arr[i]);

return maximum;
