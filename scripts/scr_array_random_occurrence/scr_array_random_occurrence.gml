/// @func scr_array_random_occurrence(arr, elem)
/// @desc Returns a random index where a specified element occurs.
/// @param {real[]} arr Array to search.
/// @param {real} elem Element to search for.

// Rename arguments
var arr, elem;
arr = argument[0];
elem = argument[1];

// Make a list of indices at which the specified element occurs
var ind = [];
var n = 0; // number of instances found
for (var i = 0; i < array_length_1d(arr); i++)
{
	if (arr[i] == elem)
	{
		ind[n] = i;
		n++;
	}
}

// If no occurrences were found, return -1
if (n < 1)
	return -1;
// Otherwise return a random index
else
	return ind[irandom(n-1)];
