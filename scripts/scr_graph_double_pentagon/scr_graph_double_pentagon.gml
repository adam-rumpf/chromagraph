/// @func scr_graph_double_pentagon()
/// @desc Generates a graph based on two K5's.
/// @return {obj_graph} Graph object.

// Define vertex positions
var coords =
[
	[room_width/2, room_height/2 + room_height/6],
	[room_width/2, room_height/2 - room_height/6],
	[room_width/2 - room_height/4, room_height/2 - room_height/4],
	[room_width/2 - 2*room_height/5, room_height/2],
	[room_width/2 - room_height/4, room_height/2 + room_height/4],
	[room_width/2 + room_height/4, room_height/2 + room_height/4],
	[room_width/2 + 2*room_height/5, room_height/2],
	[room_width/2 + room_height/4, room_height/2 - room_height/4]
];

// Define pairs of adjacent vertices
var adj =
[
	[1, 3],
	[3, 0],
	[0, 2],
	[4, 1],
	[0, 6],
	[6, 1],
	[1, 5],
	[7, 0],
	[1, 2],
	[2, 3],
	[3, 4],
	[4, 0],
	[0, 5],
	[5, 6],
	[6, 7],
	[7, 1],
	[7, 2],
	[4, 5]
];

// Define graph
return scr_create_graph_list(coords, adj);
