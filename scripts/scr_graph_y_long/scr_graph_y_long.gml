/// @func scr_graph_y_long()
/// @desc Generates a (longer) Y-shaped tree graph.
/// @return {obj_graph} Graph object.

// Define vertex positions
var coords =
[
	[room_width/2, room_height/3],
	[room_width/2, room_height/12],
	[room_width/2 - room_width/6, room_height/2],
	[room_width/2 - room_width/3, 2*room_height/3],
	[room_width/2 + room_width/6, room_height/2],
	[room_width/2 + room_width/3, 2*room_height/3]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[0, 2],
	[2, 3],
	[0, 4],
	[4, 5]
];

// Define graph
return scr_create_graph_list(coords, adj);
