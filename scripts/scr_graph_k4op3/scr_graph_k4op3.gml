/// @func scr_graph_k4op3()
/// @desc Generates the graph of the corona product of K4 and P3.
/// @return {obj_graph} Graph object.

// Define vertex positions
var coords =
[
	[room_width/2 - room_height/7, room_height/2 - room_height/7],
	[room_width/2 + room_height/7, room_height/2 - room_height/7],
	[room_width/2 + room_height/7, room_height/2 + room_height/7],
	[room_width/2 - room_height/7, room_height/2 + room_height/7],
	[room_width/2 - 3*room_height/7, room_height/2 - 3*room_height/7],
	[room_width/2 + 3*room_height/7, room_height/2 - 3*room_height/7],
	[room_width/2 + 3*room_height/7, room_height/2 + 3*room_height/7],
	[room_width/2 - 3*room_height/7, room_height/2 + 3*room_height/7],
	[room_width/2 - 3*room_height/7, room_height/2 - room_height/7],
	[room_width/2 - room_height/7, room_height/2 - 3*room_height/7],
	[room_width/2 + 3*room_height/7, room_height/2 - room_height/7],
	[room_width/2 + room_height/7, room_height/2 - 3*room_height/7],
	[room_width/2 + 3*room_height/7, room_height/2 + room_height/7],
	[room_width/2 + room_height/7, room_height/2 + 3*room_height/7],
	[room_width/2 - 3*room_height/7, room_height/2 + room_height/7],
	[room_width/2 - room_height/7, room_height/2 + 3*room_height/7]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[1, 2],
	[2, 3],
	[3, 0],
	[0, 2],
	[1, 3],
	[0, 4],
	[1, 5],
	[2, 6],
	[3, 7],
	[0, 8],
	[8, 4],
	[0, 9],
	[9, 4],
	[1, 10],
	[10, 5],
	[1, 11],
	[11, 5],
	[2, 12],
	[12, 6],
	[2, 13],
	[13, 6],
	[3, 14],
	[14, 7],
	[3, 15],
	[15, 7],
	[8, 9],
	[10, 11],
	[12, 13],
	[14, 15],
	[9, 11],
	[10, 12],
	[13, 15],
	[14, 8]
];

// Define graph
return scr_create_graph_list(coords, adj);
