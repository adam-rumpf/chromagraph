/// @func scr_graph_necklace_3()
/// @desc Generates the necklace graph with 3 pendants.
/// @return {obj_graph} Graph object.

// Define vertex positions
var unit = room_height/8;
var coords =
[
	[room_width/2 - 2*unit, room_height/2 + 3*unit],
	[room_width/2 + 2*unit, room_height/2 + 3*unit],
	[room_width/2 - 2*unit, room_height/2 - unit],
	[room_width/2 + 2*unit, room_height/2 - unit],
	[room_width/2 - 4*unit, room_height/2 + unit],
	[room_width/2 - 2*unit, room_height/2 + unit],
	[room_width/2 + 2*unit, room_height/2 + unit],
	[room_width/2 + 4*unit, room_height/2 + unit],
	[room_width/2, room_height/2 - unit],
	[room_width/2, room_height/2 - 3*unit]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[1, 6],
	[6, 3],
	[3, 8],
	[8, 2],
	[2, 5],
	[5, 0],
	[0, 4],
	[4, 2],
	[4, 5],
	[1, 7],
	[7, 3],
	[6, 7],
	[2, 9],
	[9, 3],
	[8, 9]
];

// Define graph
return scr_create_graph_list(coords, adj);
