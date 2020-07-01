/// @func scr_graph_s5()
/// @desc Generates the star graph with 5 spokes.
/// @return {obj_graph} Graph object.

// Define vertex positions
var r = room_height/4;
var coords =
[
	[room_width/2, room_height/2],
	[room_width/2 + r*cos(pi/2), room_height/2 - r*sin(pi/2)],
	[room_width/2 + r*cos(pi/2 + 2*pi/5), room_height/2 - r*sin(pi/2 + 2*pi/5)],
	[room_width/2 + r*cos(pi/2 + 4*pi/5), room_height/2 - r*sin(pi/2 + 4*pi/5)],
	[room_width/2 + r*cos(pi/2 + 6*pi/5), room_height/2 - r*sin(pi/2 + 6*pi/5)],
	[room_width/2 + r*cos(pi/2 + 8*pi/5), room_height/2 - r*sin(pi/2 + 8*pi/5)]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[0, 2],
	[0, 3],
	[0, 4],
	[0, 5]
];

// Define graph
return scr_create_graph_list(coords, adj);
