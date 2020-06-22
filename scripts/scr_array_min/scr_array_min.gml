/// @func scr_array_min(arr)
/// @desc Returns the minimum element of an array.
/// @param {real[]} arr Array of numerical values.

// Rename argument
var arr = argument[0];

// Process each element to find the smallest
var minimum = arr[0];
for (var i = 1; i < array_length_1d(arr); i++)
	minimum = min(minimum, arr[i]);

return minimum;
