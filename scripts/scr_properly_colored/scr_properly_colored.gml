/// @func scr_properly_colored(g)
/// @desc Determines whether a graph is properly colored (which requires all vertices to have a specified label).
/// @param {obj_graph} g Graph to test.
/// @return {bool} Whether the graph is properly colored (true if all vertices have a nonnegative label and all adjacent labels are distinct).

// Rename argument
var g = argument[0];

// Verify that all vertices are free of color conflict
var proper = true;
for (var i = 0; i < array_length_1d(g.v); i++)
{
	// If any vertex is improperly colored, the overall graph is improper
	if (scr_properly_colored_vertex(g.v[i], true) == false)
		proper = false;
}

// If all tests have been passed, the coloring is valid
return proper;
