/// @func scr_properly_edge_colored(g)
/// @desc Determines whether a graph is properly edge colored (which requires all edges to have a specified label).
/// @param {obj_graph} g Graph to test.
/// @return {bool} Whether the graph is properly edge colored (true if all edges have a nonnegative label and all adjacent edge labels are distinct).

// Rename argument
var g = argument[0];

// Verify that all edges are free of color conflict
var proper = true;
for (var i = 0; i < array_length_1d(g.e); i++)
{
	// If any edge is improperly colored, the overall graph is improper
	if (scr_properly_edge_colored_edge(g.e[i], true) == false)
		proper = false;
}

// If all tests have been passed, the coloring is valid
return proper;
