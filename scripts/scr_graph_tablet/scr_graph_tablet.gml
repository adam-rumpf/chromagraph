/// @func scr_graph_double_hexagon()
/// @desc Generates a tablet-shaped graph.
/// @return {obj_graph} Graph object.

// Define vertex positions
var unit = room_height/5;
var coords =
[
	[room_width/2 - unit, room_height/2 - unit],
	[room_width/2, room_height/2 - unit],
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
	[1, 2],
	[0, 3],
	[2, 4],
	[1, 3],
	[1, 4],
	[3, 4],
	[5, 6],
	[0, 5],
	[2, 6],
	[3, 5],
	[4, 6],
	[1, 5],
	[1, 6]
];

// Define graph
return scr_create_graph_list(coords, adj);
