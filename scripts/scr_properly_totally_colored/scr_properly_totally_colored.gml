/// @func scr_properly_totally_colored(g)
/// @desc Determines whether a graph is properly totally colored (which requires all vertices and edges to have a specified label).
/// @param {obj_graph} g Graph to test.
/// @return {bool} Whether the graph is properly totally colored (true if all vertices and edges have labels distinct from their neighbors).

// Rename argument
var g = argument[0];

// Test vertex coloring and edge coloring
var proper = true;
if (scr_properly_colored(g) == false)
	proper = false;
if (scr_properly_edge_colored(g) == false)
	proper = false;

// Test vertices for conflicts with incident edges
for (var i = 0; i < array_length_1d(g.v); i++)
{
	// If any vertex conflicts with an incident edge, the overall graph is improper
	if (scr_properly_totally_colored_vertex(g.v[i], true) == false)
		proper = false;
}

// Test edges for conflicts with incident vertices
for (var i = 0; i < array_length_1d(g.e); i++)
{
	// If any edge conflicts with an incident vertex, the overall graph is improper
	if (scr_properly_totally_colored_edge(g.e[i], true) == false)
		proper = false;
}


// If all tests have been passed, the coloring is valid
return proper;
