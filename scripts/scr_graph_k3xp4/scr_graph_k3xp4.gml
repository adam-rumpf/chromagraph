/// @func scr_graph_k3xp4()
/// @desc Generates the Cartesian product of K3 and P4.
/// @return {obj_graph} Graph object.

// Define vertex positions
var coords =
[
	[room_width/2 - 2*room_height/5, room_height/2 - room_height/10],
	[room_width/2 - room_height/5, room_height/2 - room_height/10],
	[room_width/2, room_height/2 - room_height/10],
	[room_width/2 + room_height/5, room_height/2 - room_height/10],
	[room_width/2 - 2*room_height/5 + room_height/10, room_height/2],
	[room_width/2 - room_height/5 + room_height/10, room_height/2],
	[room_width/2 + room_height/10, room_height/2],
	[room_width/2 + room_height/5 + room_height/10, room_height/2],
	[room_width/2 - 2*room_height/5, room_height/2 + room_height/10],
	[room_width/2 - room_height/5, room_height/2 + room_height/10],
	[room_width/2, room_height/2 + room_height/10],
	[room_width/2 + room_height/5, room_height/2 + room_height/10]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[1, 2],
	[2, 3],
	[4, 5],
	[5, 6],
	[6, 7],
	[8, 9],
	[9, 10],
	[10, 11],
	[0, 4],
	[1, 5],
	[2, 6],
	[3, 7],
	[4, 8],
	[5, 9],
	[6, 10],
	[7, 11],
	[0, 8],
	[1, 9],
	[2, 10],
	[3, 11]
];

// Define graph
return scr_create_graph_list(coords, adj);
