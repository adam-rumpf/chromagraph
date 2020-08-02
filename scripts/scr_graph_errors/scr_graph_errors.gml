/// @func scr_graph_errors(g)
/// @desc Determines whether any element of a given graph is in error.
/// @param {obj_graph} g Graph to check.
/// @return {bool} True if the graph contains an error and false otherwise.

// Rename argument
var g = argument[0];

// Check whether any vertex is marked as angry
for (var i = 0; i < array_length_1d(g.v); i++)
{
	if (g.v[i].angry == true)
		return true;
}

// Check whether any edge is marked as angry
for (var i = 0; i < array_length_1d(g.e); i++)
{
	if (g.e[i].angry == true)
		return true;
}

// If both tests have been passed, then there is no error
return false;
