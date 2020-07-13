/// @func scr_properly_fall_colored(g)
/// @desc Determines whether a graph is properly fall colored (which requires all vertices to have a specified label).
/// @param {obj_graph} g Graph to test.
/// @return {bool} Whether the graph is properly fall colored (true if it is properly colored and each color class is a dominating set).

// Rename argument
var g = argument[0];

var proper = true;;

// Verify proper coloring
if (scr_properly_colored(g) == false)
	proper = false;

// Verify that each color class is dominating
for (var i = 0; i < global.puzzle_limit; i++)
{
	if (scr_set_dominating(g, i) == false)
		proper = false;
}

// If all tests have been passed, the coloring is valid
return proper;
