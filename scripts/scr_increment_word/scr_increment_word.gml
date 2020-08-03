/// @func scr_increment_word(arr, b)
/// @desc Given an array representing the digits of a base-b number, increments the array's number by 1.
/// @param {int[]} arr Array of digits.
/// @param {int} b Base of number.

// Rename arguments
var arr, b;
arr = argument[0];
b = argument[1];

// Get array length
var n = array_length_1d(arr);

// Increment final digit by 1
arr[n-1]++;

// Roll over digits as long as they exceed the base
var i = n-1; // current position
while (arr[i] >= b && i > 0)
{
	// Carry over
	arr[i] = 0;
	arr[i-1]++;
	
	// Move to the left
	i--;
	
	// Roll over first digit if needed
	if (i <= 0)
	{
		if (arr[0] >= b)
			arr[0] = 0;
	}
}

// Return edited array
return arr;
