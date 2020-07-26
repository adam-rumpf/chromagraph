/// @func scr_graph_cube()
/// @desc Generates the cube graph.
/// @return {obj_graph} Graph object.

// Define vertex positions
var unit = room_height/3;
var coords =
[
	[room_width/2 - unit/2, room_height/2 - unit],
	[room_width/2 + unit/2, room_height/2 - unit],
	[room_width/2 - 3*unit/2, room_height/2],
	[room_width/2 - unit/2, room_height/2],
	[room_width/2 + unit/2, room_height/2],
	[room_width/2 + 3*unit/2, room_height/2],
	[room_width/2 - unit/2, room_height/2 + unit],
	[room_width/2 + unit/2, room_height/2 + unit]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[0, 2],
	[0, 4],
	[1, 3],
	[1, 5],
	[2, 3],
	[4, 5],
	[2, 6],
	[3, 7],
	[4, 6],
	[5, 7],
	[6, 7]
];

// Define graph
return scr_create_graph_list(coords, adj);
