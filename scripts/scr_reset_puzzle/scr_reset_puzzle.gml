/// @func scr_reset_puzzle()
/// @desc Resets all attributes of the current room's puzzle.

// Get graph object
var g = obj_game.g;

// Cancel action in case graph object is not assigned
if (g == obj_game)
	exit;

// Reset solution status
global.puzzle_solved = false;

// Reset all vertex labels
for (var i = 0; i < array_length_1d(g.v); i++)
{
	g.v[i].label = -1;
	g.v[i].angry = false;
	g.v[i].image_blend = c_black;
}

// Reset all edge labels
for (var i = 0; i < array_length_1d(g.e); i++)
{
	g.e[i].label = -1;
	g.e[i].angry = false;
}

// Reset all class totals
for (var i = 0; i < array_length_1d(obj_game.class); i++)
	obj_game.class[i] = 0;
