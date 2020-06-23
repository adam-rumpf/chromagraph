/// @func scr_find_array(arr, elem)
/// @desc Finds the first occurrence of a specified element in a 1D array and returns its index.
/// @param {real[]} arr Array to search.
/// @param {real} elem Element to search for.
/// @return {int} First array index corresponding to specified element (or -1 if not found).

// Rename arguments
var arr, elem;
arr = argument[0];
elem = argument[1];

// Look through the array until the element is found
var pos = -1;
for (var i = 0; i < array_length_1d(arr); i++)
{
	if (arr[i] == elem)
	{
		pos = i;
		break;
	}
}

return pos;
