/// @func scr_count_nonnegative_1d(arr)
/// @desc Counts the number of nonnegative elements in a 1D array.
/// @param {real[]} arr Array to be counted.
/// @return {real} Number of nonnegative elements.

// Rename argument
var arr = argument[0];

// Count elements
var total = 0;
for (var i = 0; i < array_length_1d(arr); i++)
{
	if (arr[i] >= 0)
		total++;
}

return total;
