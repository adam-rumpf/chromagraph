/// @func scr_graph_y()
/// @desc Generates a Y-shaped tree graph.
/// @return {obj_graph} Graph object.

// Define vertex positions
var coords =
[
	[room_width/2 - room_height/3, room_height/2],
	[room_width/2, room_height/2],
	[room_width/2 + room_height/3, room_height/2],
	[room_width/2 - room_height/3 - (room_height/3)*cos(pi/4), room_height/2 - (room_height/3)*sin(pi/4)],
	[room_width/2 - room_height/3 - (room_height/3)*cos(pi/4), room_height/2 + (room_height/3)*sin(pi/4)]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[1, 2],
	[0, 3],
	[0, 4]
];

// Define graph
return scr_create_graph_list(coords, adj);
