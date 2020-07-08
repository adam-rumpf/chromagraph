/// @func scr_array_count(arr, elem)
/// @desc Find the number of times a specified element appears in a 1D array.
/// @param {real[]} arr Array to search.
/// @param {real} elem Element to count.
/// @return {int} Number of times elem occurs in arr.

// Rename arguments
var arr, elem;
arr = argument[0];
elem = argument[1];

// Look through the array and count occurrences of the element
var tot = 0;
for (var i = 0; i < array_length_1d(arr); i++)
{
	if (arr[i] == elem)
		tot++;
}

return tot;
