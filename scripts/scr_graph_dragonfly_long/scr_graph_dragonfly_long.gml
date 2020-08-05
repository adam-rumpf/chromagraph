/// @func scr_graph_dragonfly_long()
/// @desc Generates the (larger) dragonfly tree graph.
/// @return {obj_graph} Graph object.

// Define vertex positions
var coords =
[
	[room_width/2, room_height/3],
	[room_width/2 - room_width/6, room_height/3 - room_height/8],
	[room_width/2 - room_width/3, room_height/3 - room_height/4],
	[room_width/2 + room_width/6, room_height/3 - room_height/8],
	[room_width/2 + room_width/3, room_height/3 - room_height/4],
	[room_width/2 - room_width/6, room_height/3 + room_height/8],
	[room_width/2 - room_width/3, room_height/3 + room_height/4],
	[room_width/2 + room_width/6, room_height/3 + room_height/8],
	[room_width/2 + room_width/3, room_height/3 + room_height/4],
	[room_width/2, room_height/3 + room_height/6],
	[room_width/2, room_height/3 + room_height/3],
	[room_width/2, room_height/3 + room_height/2]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[1, 2],
	[0, 3],
	[3, 4],
	[0, 5],
	[5, 6],
	[0, 7],
	[7, 8],
	[0, 9],
	[9, 10],
	[10, 11]
];

// Define graph
return scr_create_graph_list(coords, adj);
