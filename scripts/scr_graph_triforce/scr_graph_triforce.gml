/// @func scr_graph_triforce()
/// @desc Generates the triforce graph (Sierpinski triangle).
/// @return {obj_graph} Graph object.

// Define vertex positions
var unit = room_height/3;
var coords =
[
	[room_width/2, room_height/2 - (sqrt(3)/2)*unit],
	[room_width/2 - unit/2, room_height/2],
	[room_width/2 + unit/2, room_height/2],
	[room_width/2, room_height/2 + (sqrt(3)/2)*unit],
	[room_width/2 - unit, room_height/2 + (sqrt(3)/2)*unit],
	[room_width/2 + unit, room_height/2 + (sqrt(3)/2)*unit]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[0, 2],
	[1, 2],
	[1, 3],
	[2, 3],
	[1, 4],
	[4, 3],
	[2, 5],
	[5, 3]
];

// Define graph
return scr_create_graph_list(coords, adj);
