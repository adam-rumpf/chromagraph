/// @func scr_properly_colored(g)
/// @desc Determines whether a graph is properly colored (which requires all vertices to have a specified label).
/// @param {obj_graph} g Graph to test.
/// @return {bool} Whether the graph is properly colored (true if all vertices have a nonnegative label and all adjacent labels are distinct).

// Rename argument
var g = argument[0];

// Verify that all vertices have a nonnegative label
for (var i = 0; i < array_length_1d(g.v); i++)
{
	// If any label is negative, immediately fail
	if (g.v[i].label < 0)
		return false;
}

// Verify that the colors of each edge's endpoints are distinct
for (var i = 0; i < array_length_1d(g.e); i++)
{
	// Get labels of endpoints
	var ch = g.e[i].head.label;
	var ct = g.e[i].tail.label;
	
	// If any adjacent pair has the same label, immediately fail
	if (ch == ct)
		return false;
}

// If all tests have been passed, the coloring is valid
return true;
