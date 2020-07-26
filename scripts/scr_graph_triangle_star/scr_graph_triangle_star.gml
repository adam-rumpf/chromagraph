/// @func scr_graph_triangle_star()
/// @desc Generates a graph with a surprisingly large chromatic number.
/// @return {obj_graph} Graph object.

// Define vertex positions
var r_out = 2*room_height/5;
var r_in = room_height/8;
var coords =
[
	[room_width/2, room_height/2],
	[room_width/2, room_height/2 + r_out],
	[room_width/2 + r_in*cos(2*pi/9), room_height/2 + r_in*sin(2*pi/9)],
	[room_width/2 + r_in*cos(2*pi/9), room_height/2 - r_in*sin(2*pi/9)],
	[room_width/2 - r_in*cos(2*pi/9), room_height/2 - r_in*sin(2*pi/9)],
	[room_width/2 - r_in*cos(2*pi/9), room_height/2 + r_in*sin(2*pi/9)],
	[room_width/2 - r_out*cos(pi/6), room_height/2 + r_out*sin(pi/6)],
	[room_width/2 + r_out*cos(pi/6), room_height/2 + r_out*sin(pi/6)],
	[room_width/2, room_height/2 - r_out]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[0, 2],
	[0, 3],
	[0, 4],
	[0, 5],
	[1, 2],
	[2, 3],
	[3, 4],
	[4, 5],
	[5, 1],
	[2, 5],
	[6, 7],
	[7, 8],
	[8, 6],
	[6, 4],
	[6, 5],
	[6, 1],
	[7, 1],
	[7, 2],
	[7, 3],
	[8, 3],
	[8, 4]
];

// Define graph
return scr_create_graph_list(coords, adj);
