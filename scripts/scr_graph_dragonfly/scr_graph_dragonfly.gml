/// @func scr_graph_dragonfly()
/// @desc Generates the dragonfly tree graph.
/// @return {obj_graph} Graph object.

// Define vertex positions
var coords =
[
	[room_width/2, room_height/3],
	[room_width/3, room_height/3 - room_height/6],
	[2*room_width/3, room_height/3 - room_height/6],
	[room_width/3, room_height/3 + room_height/6],
	[2*room_width/3, room_height/3 + room_height/6],
	[room_width/2, room_height/3 + room_height/4],
	[room_width/2, room_height/3 + 2*room_height/4]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[0, 2],
	[0, 3],
	[0, 4],
	[0, 5],
	[5, 6]
];

// Define graph
return scr_create_graph_list(coords, adj);
