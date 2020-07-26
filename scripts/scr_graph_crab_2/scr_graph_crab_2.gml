/// @func scr_graph_crab_2()
/// @desc Generates the crab tree graph with 2 spokes.
/// @return {obj_graph} Graph object.

// Define vertex positions
var coords =
[
	[room_width/2 - room_height/6, room_height/2],
	[room_width/2 + room_height/6, room_height/2],
	[room_width/2 - room_height/3, room_height/3],
	[room_width/2 + room_height/3, room_height/3],
	[room_width/2 - room_height/3, 2*room_height/3],
	[room_width/2 + room_height/3, 2*room_height/3]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[0, 2],
	[0, 4],
	[1, 3],
	[1, 5]
];

// Define graph
return scr_create_graph_list(coords, adj);
