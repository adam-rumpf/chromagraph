/// @func scr_choose_nonnegative_partition(arr)
/// @desc Chooses a random row from a 2D array which contains at least one nonnegative element.
/// @param {real[]} arr Array to be chosen from.

// Rename argument
var arr = argument[0];

// Make a list of all rows containing at least one nonnegative element
var rows = [];
var n = 0; // number of valid choices
for (var i = 0; i < array_height_2d(arr); i++)
{
	if (scr_count_nonnegative_2d(arr, i) > 0)
	{
		rows[n] = i;
		n++;
	}
}

// If no choices exist, immediately return -1
if (n < 1)
	return -1;
// Otherwise, return a random choice
else
	return rows[irandom(n-1)];
