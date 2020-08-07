/// @func scr_menu_pallette(num, multi)
/// @desc Produces colors from a standard, global pallette (for menu icons).
/// @param {int} num Color ID.
/// @param {real} multi Multiplicative factor to apply to lightness value.
/// @return {real} Color value corresponding to given ID.

// Rename arguments
var num, multi;
num = argument[0];
multi = argument[1];

// Return white for a negative label
if (num < 0)
	return c_white;

// Define basic color pallette
var pallette =
[
	[231, 238, 231], // vertex coloring
	[199, 204, 195], // edge coloring
	[240, 214, 205], // total coloring
	[219, 238, 206], // graceful trees
	[244, 235, 241], // decomposition
	[227, 197, 212], // dominating set
	[218, 210, 223], // fall coloring
	[200, 204, 225] // equitable coloring
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
	return make_color_hsv((173*num) % 255, 15, 255*multi);
