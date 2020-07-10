/// @func scr_set_dominating(g, label)
/// @desc Determines whether a given color class is a dominating set for a given graph.
/// @param {obj_graph} g Graph to test.
/// @param {int} label Color class to evaluate.
/// @return {bool} Whether the color class is a dominating set (true if all vertices are either in the set or adjacent to something in the set).

// Rename arguments
var g, label;
g = argument[0];
label = argument[1];

// Verify that the number of selected vertices is within the bound (dominating set only)
if (global.puzzle == 6)
{
	if (obj_game.class[0] > global.puzzle_limit)
		return false;
}

// Verify that each vertex is either in or adjacent to the set
for (var i = 0; i < array_length_1d(g.v); i++)
{
	// Selected vertices are fine
	if (g.v[i].label > 0)
		continue;
	
	// Otherwise check the vertex's neighborhood to find a selected vertex
	for (var j = 0; j < array_length_1d(g.v[i].out_arcs); j++)
	{
		if (g.v[i].out_arcs[j].head.label > 0)
			continue;
	}
	for (var j = 0; j < array_length_1d(g.v[i].in_arcs); j++)
	{
		if (g.v[i].in_arcs[j].tail.label > 0)
			continue;
	}
	
	// If no selected neighbor was found, the set is not dominating
	return false;
}

// If all tests have been passed, the set is valid
return true;
