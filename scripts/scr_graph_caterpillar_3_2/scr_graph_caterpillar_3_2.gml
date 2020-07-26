/// @func scr_graph_caterpillar_3_2()
/// @desc Generates a caterpillar graph including 3 sets of 2 legs.
/// @return {obj_graph} Graph object.

// Define vertex positions
var coords =
[
	[room_width/2 - room_height/3, room_height/2],
	[room_width/2, room_height/2],
	[room_width/2 + room_height/3, room_height/2],
	[room_width/2 - room_height/3 - (room_height/3)*cos(pi/3), room_height/2 - (room_height/3)*sin(pi/3)],
	[room_width/2, room_height/2 - room_height/3],
	[room_width/2 + room_height/3 + (room_height/3)*cos(pi/3), room_height/2 - (room_height/3)*sin(pi/3)],
	[room_width/2 - room_height/3 - (room_height/3)*cos(pi/3), room_height/2 + (room_height/3)*sin(pi/3)],
	[room_width/2, room_height/2 + room_height/3],
	[room_width/2 + room_height/3 + (room_height/3)*cos(pi/3), room_height/2 + (room_height/3)*sin(pi/3)]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[1, 2],
	[0, 3],
	[1, 4],
	[2, 5],
	[0, 6],
	[1, 7],
	[2, 8]
];

// Define graph
return scr_create_graph_list(coords, adj);
