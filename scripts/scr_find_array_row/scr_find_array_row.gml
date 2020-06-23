/// @func scr_find_array_row(arr, elem)
/// @desc Finds the (first) row of a 2D array to which a specified element belongs and returns its index.
/// @param {real[]} arr Array to search.
/// @param {real} elem Element to search for.
/// @returns {int} First row index containing the specified element (or -1 if not found).

// Rename arguments
var arr, elem;
arr = argument[0];
elem = argument[1];

// Look through each row until the element is found
var row = -1;
for (var i = 0; i < array_height_2d(arr); i++)
{
	var found = false;
	for (var j = 0; j < array_length_2d(arr, i); j++)
	{
		if (arr[i,j] == elem)
			found = true;
	}
	if (found == true)
	{
		row = i;
		break;
	}
}

return row;
