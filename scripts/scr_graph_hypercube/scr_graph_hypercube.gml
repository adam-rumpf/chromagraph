/// @func scr_graph_hypercube()
/// @desc Generates the hypercube graph.
/// @return {obj_graph} Graph object.

// Define vertex positions
var r_in = room_height/6;
var r_out = 2*room_height/5;
var coords =
[
	[room_width/2 + r_in*cos(pi/8), room_height/2 - r_in*sin(pi/8)],
	[room_width/2 + r_in*cos(2*pi*(1/8)+pi/8), room_height/2 - r_in*sin(2*pi*(1/8)+pi/8)],
	[room_width/2 + r_in*cos(2*pi*(2/8)+pi/8), room_height/2 - r_in*sin(2*pi*(2/8)+pi/8)],
	[room_width/2 + r_in*cos(2*pi*(3/8)+pi/8), room_height/2 - r_in*sin(2*pi*(3/8)+pi/8)],
	[room_width/2 + r_in*cos(2*pi*(4/8)+pi/8), room_height/2 - r_in*sin(2*pi*(4/8)+pi/8)],
	[room_width/2 + r_in*cos(2*pi*(5/8)+pi/8), room_height/2 - r_in*sin(2*pi*(5/8)+pi/8)],
	[room_width/2 + r_in*cos(2*pi*(6/8)+pi/8), room_height/2 - r_in*sin(2*pi*(6/8)+pi/8)],
	[room_width/2 + r_in*cos(2*pi*(7/8)+pi/8), room_height/2 - r_in*sin(2*pi*(7/8)+pi/8)],
	[room_width/2 + r_out*cos(pi/8), room_height/2 - r_out*sin(pi/8)],
	[room_width/2 + r_out*cos(2*pi*(1/8)+pi/8), room_height/2 - r_out*sin(2*pi*(1/8)+pi/8)],
	[room_width/2 + r_out*cos(2*pi*(2/8)+pi/8), room_height/2 - r_out*sin(2*pi*(2/8)+pi/8)],
	[room_width/2 + r_out*cos(2*pi*(3/8)+pi/8), room_height/2 - r_out*sin(2*pi*(3/8)+pi/8)],
	[room_width/2 + r_out*cos(2*pi*(4/8)+pi/8), room_height/2 - r_out*sin(2*pi*(4/8)+pi/8)],
	[room_width/2 + r_out*cos(2*pi*(5/8)+pi/8), room_height/2 - r_out*sin(2*pi*(5/8)+pi/8)],
	[room_width/2 + r_out*cos(2*pi*(6/8)+pi/8), room_height/2 - r_out*sin(2*pi*(6/8)+pi/8)],
	[room_width/2 + r_out*cos(2*pi*(7/8)+pi/8), room_height/2 - r_out*sin(2*pi*(7/8)+pi/8)]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 3],
	[3, 6],
	[6, 1],
	[1, 4],
	[4, 7],
	[7, 2],
	[2, 5],
	[5, 0],
	[8, 9],
	[9, 10],
	[10, 11],
	[11, 12],
	[12, 13],
	[13, 14],
	[14, 15],
	[15, 8],
	[0, 9],
	[1, 10],
	[2, 11],
	[3, 12],
	[4, 13],
	[5, 14],
	[6, 15],
	[7, 8],
	[0, 15],
	[1, 8],
	[2, 9],
	[3, 10],
	[4, 11],
	[5, 12],
	[6, 13],
	[7, 14]
];

// Define graph
return scr_create_graph_list(coords, adj);
