/// @func scr_graph_kite()
/// @desc Generates the kite graph (the version similar to the dart graph).
/// @return {obj_graph} Graph object.

// Define vertex positions
var coords =
[
	[room_width/3, room_height/2],
	[room_width/2, room_height/2],
	[2*room_width/3, room_height/2],
	[7*room_width/12, room_height/2 - room_width/12],
	[7*room_width/12, room_height/2 + room_width/12]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[3, 4],
	[1, 3],
	[3, 2],
	[1, 4],
	[4, 2]
];

// Define graph
return scr_create_graph_list(coords, adj);
