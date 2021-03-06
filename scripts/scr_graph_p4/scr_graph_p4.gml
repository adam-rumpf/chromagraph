/// @func scr_graph_p4()
/// @desc Generates the path graph of length 4.
/// @return {obj_graph} Graph object.

// Define vertex positions
var coords =
[
	[room_width/6, room_height/2 + room_height/10],
	[2*room_width/6, room_height/2 - room_height/10],
	[3*room_width/6, room_height/2 + room_height/10],
	[4*room_width/6, room_height/2 - room_height/10],
	[5*room_width/6, room_height/2 + room_height/10]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[1, 2],
	[2, 3],
	[3, 4]
];

// Define graph
return scr_create_graph_list(coords, adj);
