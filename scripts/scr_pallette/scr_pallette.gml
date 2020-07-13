/// @func scr_pallette(num, multi)
/// @desc Produces colors from a standard, global pallette.
/// @param {int} num Color ID (usually corresponds to vertex or edge label).
/// @param {real} multi Multiplicative factor to apply to lightness value.
/// @return {real} Color value corresponding to given ID.

// Rename arguments
var num, multi;
num = argument[0];
multi = argument[1];

// Return black for a negative label
if (num < 0)
	return c_black;

// Define basic color pallette
var pallette =
[
	[255, 0, 0], // 0
	[0, 63, 255], // 1
	[0, 223, 0], // 2
	[191, 15, 191], // 3
	[255, 255, 0], // 4
	[0, 255, 255], // 5
	[255, 121, 0], // 6
	[255, 255, 255], // 7
	[121, 0, 121], // 8
	[0, 127, 0], // 9
	[127, 63, 0], // 10
	[127, 0, 0], // 11
	[0, 127, 127] // 12
];

// Select color
if (num < array_length_1d(pallette))
{
	// If within preset range, generate RGB value from triple
	var triple = pallette[num];
	
	// Rescale values
	if (multi != 1)
	{
		for (var i = 0; i < 3; i++)
			triple[i] = clamp(triple[i]*multi, 0, 255);
	}
	
	// Define color
	return make_color_rgb(triple[0], triple[1], triple[2]);
}
else
	// Otherwise default to a quasirandom HSV color
	return make_color_hsv((173*num) % 255, 255, 255*multi);
