/// @func scr_graph_petersen_star()
/// @desc Generates the petersen graph (pentagram embedding).
/// @return {obj_graph} Graph object.

// Define vertex positions
var r_out = 0.6*(room_height/2);
var r_in = 0.6*(room_height/4);
var coords =
[
	[room_width/2 + r_out*cos(pi/2), room_height/2 - r_out*sin(pi/2)],
	[room_width/2 + r_out*cos(pi/2 + 2*pi/5), room_height/2 - r_out*sin(pi/2 + 2*pi/5)],
	[room_width/2 + r_out*cos(pi/2 + 4*pi/5), room_height/2 - r_out*sin(pi/2 + 4*pi/5)],
	[room_width/2 + r_out*cos(pi/2 + 6*pi/5), room_height/2 - r_out*sin(pi/2 + 6*pi/5)],
	[room_width/2 + r_out*cos(pi/2 + 8*pi/5), room_height/2 - r_out*sin(pi/2 + 8*pi/5)],
	[room_width/2 + r_in*cos(pi/2), room_height/2 - r_in*sin(pi/2)],
	[room_width/2 + r_in*cos(pi/2 + 2*pi/5), room_height/2 - r_in*sin(pi/2 + 2*pi/5)],
	[room_width/2 + r_in*cos(pi/2 + 4*pi/5), room_height/2 - r_in*sin(pi/2 + 4*pi/5)],
	[room_width/2 + r_in*cos(pi/2 + 6*pi/5), room_height/2 - r_in*sin(pi/2 + 6*pi/5)],
	[room_width/2 + r_in*cos(pi/2 + 8*pi/5), room_height/2 - r_in*sin(pi/2 + 8*pi/5)]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[1, 2],
	[2, 3],
	[3, 4],
	[4, 0],
	[5, 7],
	[7, 9],
	[9, 6],
	[6, 8],
	[8, 5],
	[0, 5],
	[1, 6],
	[2, 7],
	[3, 8],
	[4, 9]
];

// Define graph
return scr_create_graph_list(coords, adj);
