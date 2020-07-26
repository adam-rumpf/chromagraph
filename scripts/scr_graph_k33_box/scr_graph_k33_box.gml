/// @func scr_graph_k33_box()
/// @desc Generates a graph consisting of K3,3 surrounded by a box.
/// @return {obj_graph} Graph object.

// Define vertex positions
var coords =
[
	[room_width/2 - room_height/3, room_height/2 - room_height/6],
	[room_width/2, room_height/2 - room_height/6],
	[room_width/2 + room_height/3, room_height/2 - room_height/6],
	[room_width/2 - room_height/3, room_height/2 + room_height/6],
	[room_width/2, room_height/2 + room_height/6],
	[room_width/2 + room_height/3, room_height/2 + room_height/6]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 3],
	[0, 4],
	[0, 5],
	[1, 3],
	[1, 5],
	[2, 3],
	[2, 4],
	[2, 5],
	[0, 1],
	[1, 2],
	[3, 4],
	[4, 5]
];

// Define graph
return scr_create_graph_list(coords, adj);
