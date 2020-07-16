/// @func scr_vertex_random_scatter(g)
/// @desc Randomizes the positions of all vertices in a graph (as random positions in room).
/// @param {obj_graph} g Graph to move.

// Rename argument
var g = argument[0];

// Process each vertex
for (var i = 0; i < array_length_1d(g.v); i++)
{
	// Randomize vertex coordinates
	g.v[i].x = irandom(room_width);
	g.v[i].y = irandom(room_height);
}

// Rebase overlay objects
scr_vertex_rebase(g);
