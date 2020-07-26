/// @func scr_graph_double_hexagon()
/// @desc Generates a graph consisting of two merged hexagons.
/// @return {obj_graph} Graph object.

// Define vertex positions
var r = room_height/5;
var coords =
[
	[room_width/2, room_height/2 - r*sin(pi/6)],
	[room_width/2 - r*cos(pi/6), room_height/2 - r],
	[room_width/2 - 2*r*cos(pi/6), room_height/2 - r*sin(pi/6)],
	[room_width/2 - 2*r*cos(pi/6), room_height/2 + r*sin(pi/6)],
	[room_width/2 - r*cos(pi/6), room_height/2 + r],
	[room_width/2, room_height/2 + r*sin(pi/6)],
	[room_width/2 + r*cos(pi/6), room_height/2 - r],
	[room_width/2 + 2*r*cos(pi/6), room_height/2 - r*sin(pi/6)],
	[room_width/2 + 2*r*cos(pi/6), room_height/2 + r*sin(pi/6)],
	[room_width/2 + r*cos(pi/6), room_height/2 + r],
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[1, 2],
	[2, 3],
	[3, 4],
	[4, 5],
	[5, 0],
	[0, 6],
	[6, 7],
	[7, 8],
	[8, 9],
	[9, 5]
];

// Define graph
return scr_create_graph_list(coords, adj);
