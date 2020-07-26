/// @func scr_graph_tablet2()
/// @desc Generates a tablet-shaped graph.
/// @return {obj_graph} Graph object.

// Define vertex positions
var unit = room_height/5;
var coords =
[
	[room_width/2, room_height/2],
	[room_width/2 - unit, room_height/2 - unit],
	[room_width/2 + unit, room_height/2 - unit],
	[room_width/2 - 2*unit, room_height/2],
	[room_width/2 + 2*unit, room_height/2],
	[room_width/2 - unit, room_height/2 + unit],
	[room_width/2 + unit, room_height/2 + unit]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[0, 2],
	[0, 5],
	[0, 6],
	[3, 1],
	[3, 5],
	[3, 2],
	[3, 6],
	[4, 2],
	[4, 6],
	[4, 1],
	[4, 5],
	[1, 2],
	[5, 6],
	[1, 5],
	[2, 6]
];

// Define graph
return scr_create_graph_list(coords, adj);
