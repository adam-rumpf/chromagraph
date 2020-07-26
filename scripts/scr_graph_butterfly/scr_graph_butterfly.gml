/// @func scr_graph_butterfly()
/// @desc Generates the butterfly tree graph.
/// @return {obj_graph} Graph object.

// Define vertex positions
var coords =
[
	[room_width/2, room_height/2 - room_height/5],
	[room_width/2 - room_width/5, room_height/2 - 2*room_height/5],
	[room_width/2 + room_width/5, room_height/2 - 2*room_height/5],
	[room_width/2 - room_width/5, room_height/2],
	[room_width/2 + room_width/5, room_height/2],
	[room_width/2 - room_width/5, room_height/2 + 3*room_height/10],
	[room_width/2 + room_width/5, room_height/2 + 3*room_height/10]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[0, 2],
	[0, 3],
	[0, 4],
	[3, 5],
	[4, 6]
];

// Define graph
return scr_create_graph_list(coords, adj);
