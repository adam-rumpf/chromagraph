/// @func scr_choose_nonnegative_2d(arr, index)
/// @desc Chooses the index of a random nonnegative element from a 2D array at a specified index.
/// @param {real[]} arr Array to be chosen from.
/// @param {int} index Index of array to be chosen from.

// Rename arguments
var arr = argument[0];
var index = argument[1];

// Make a list of all nonnegative indices
var ind = [];
var n = 0; // number of valid choices
for (var i = 0; i < array_length_2d(arr, index); i++)
{
	if (arr[index,i] >= 0)
	{
		ind[n] = i;
		n++;
	}
}

// If no choices exist, immediately return -1
if (n < 1)
	return -1;
// Otherwise, return a random choice
else
	return ind[irandom(array_length_1d(ind)-1)];
