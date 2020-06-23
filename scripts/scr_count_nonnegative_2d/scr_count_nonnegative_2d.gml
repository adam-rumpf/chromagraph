/// @func scr_count_nonnegative_2d(arr, index)
/// @desc Counts the number of nonnegative elements in a 2D array at a specified index.
/// @param {real[]} arr Array to be counted.
/// @param {int} index Index of array to be counted.
/// @returns {real} Number of nonnegative elements.

// Rename arguments
var arr = argument[0];
var index = argument[1];

// Count elements
var total = 0;
for (var i = 0; i < array_length_2d(arr, index); i++)
{
	if (arr[index,i] >= 0)
		total++;
}

return total;
