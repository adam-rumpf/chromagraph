/// @func scr_graph_p2()
/// @desc Generates the path graph of length 2.
/// @return {obj_graph} Graph object.

// Define vertex positions
var coords =
[
	[room_width/3, room_height/2 + room_height/10],
	[room_width/2, room_height/2 - room_height/10],
	[2*room_width/3, room_height/2 + room_height/10]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[1, 2]
];

// Define graph
return scr_create_graph_list(coords, adj);
