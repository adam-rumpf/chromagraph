/// @func scr_graph_categorical_4()
/// @desc Generates the graph of K2 x K4.
/// @return {obj_graph} Graph object.

// Define vertex positions
var r = 0.6*(room_height/2);
var coords =
[
	[room_width/2 + r*cos(pi/8), room_height/2 - r*sin(pi/8)],
	[room_width/2 + r*cos(pi/8 + pi/4), room_height/2 - r*sin(pi/8 + pi/4)],
	[room_width/2 + r*cos(pi/8 + 2*pi/4), room_height/2 - r*sin(pi/8 + 2*pi/4)],
	[room_width/2 + r*cos(pi/8 + 3*pi/4), room_height/2 - r*sin(pi/8 + 3*pi/4)],
	[room_width/2 + r*cos(pi/8 + 4*pi/4), room_height/2 - r*sin(pi/8 + 4*pi/4)],
	[room_width/2 + r*cos(pi/8 + 5*pi/4), room_height/2 - r*sin(pi/8 + 5*pi/4)],
	[room_width/2 + r*cos(pi/8 + 6*pi/4), room_height/2 - r*sin(pi/8 + 6*pi/4)],
	[room_width/2 + r*cos(pi/8 + 7*pi/4), room_height/2 - r*sin(pi/8 + 7*pi/4)]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 3],
	[0, 5],
	[0, 7],
	[1, 2],
	[1, 4],
	[1, 6],
	[2, 5],
	[2, 7],
	[3, 4],
	[3, 6],
	[4, 7],
	[5, 6]
];

// Define graph
return scr_create_graph_list(coords, adj);
