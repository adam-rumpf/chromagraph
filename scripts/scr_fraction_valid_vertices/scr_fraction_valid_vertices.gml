/// @func scr_fraction_valid_vertices(g)
/// @desc Determines fraction of a graph's vertices which are validly colored.
/// @param {obj_graph} g Graph to check.
/// @return {real} Fraction of vertices which are colored without conflicts.

// Rename argument
var g = argument[0];

// Get number of vertices
var n = array_length_1d(g.v);
if (n <= 0)
	return 1;

// Get number of properly-colored vertices
var valid = 0;
for (var i = 0; i < array_length_1d(g.v); i++)
{
	// Requires that the vertex have a color and be free of conflicts
	if ((g.v[i].label >= 0) && (g.v[i].angry == false))
		valid++;
}

// Return fraction of valid vertices
return valid/n;
