/// @func scr_ascending_sequence(seq)
/// @desc Returns whether a given array is a strictly ascending sequence.
/// @param {real[]} seq An array of numbers.
/// @returns {bool} Whether or not the sequence is ascending.

// Rename arguments
var seq = argument[0];

var ascending = true;
for (var i = 0; i < array_length_1d(seq)-1; i++)
{
	if (seq[i] >= seq[i+1])
	{
		ascending = false;
		break;
	}
}

return ascending;
