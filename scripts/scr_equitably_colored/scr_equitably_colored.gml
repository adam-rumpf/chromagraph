/// @func scr_equitably_colored(g, tol)
/// @desc Determines whether a graph is properly equitably colored (which requires all vertices to have a specified label).
/// @param {obj_graph} g Graph to test.
/// @param {int} tol Maximum allowed deviation in color class size from equally-sized color class size.
/// @return {bool} Whether the graph is properly equitably colored (true if properly colored and all color class sizes are within the allowed tolerance of exact equality).

// Rename arguments
var g, tol;
g = argument[0];
tol = argument[1];

// Verify that all vertices are free of color conflict
var proper = scr_properly_colored(g);

// Verify that all color class sizes are within the allowed tolerance of exact equality
var es = round(array_length_1d(g.v)/global.puzzle_limit); // color class size if all exactly equal
for (var i = 0; i < array_length_1d(obj_game.class); i++)
{
	// If below tolerance, do nothing
	if (obj_game.class[i] <= es + tol)
		continue;
	
	// Otherwise, mark entire color class as wrong
	for (var j = 0; j < array_length_1d(g.v); j++)
	{
		if (g.v[j].label == i)
			g.v[j].angry = true;
	}
	
	// Also mark solution as invalid
	proper = false;
}

// If all tests have been passed, the coloring is valid
return proper;
