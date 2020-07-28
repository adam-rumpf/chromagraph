/// @func scr_choose_nonnegative_1d(arr)
/// @desc Chooses the index of a random nonnegative element from a 1D array.
/// @param {real[]} arr Array to be chosen from.
/// @return {real} Randomly-chosen index of a nonnegative element (or -1 if none exists).

// Rename argument
var arr = argument[0];

// Make a list of all nonnegative indices
var ind = [];
var n = 0; // number of valid choices
for (var i = 0; i < array_length_1d(arr); i++)
{
	if (arr[i] >= 0)
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
	return ind[irandom(n-1)];
