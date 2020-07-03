/// @func scr_graph_petersen_claw()
/// @desc Generates the petersen graph (claw embedding from cover of West).
/// @return {obj_graph} Graph object.

// Define vertex positions
var r_out = 0.6*(room_height/2);
var r_in = 0.5*(room_height/4);
var coords =
[
	[room_width/2 + r_out, room_height/2],
	[room_width/2 + r_out*cos(pi/3), room_height/2 - r_out*sin(pi/3)],
	[room_width/2 + r_out*cos(2*pi/3), room_height/2 - r_out*sin(2*pi/3)],
	[room_width/2 + r_out*cos(pi), room_height/2 - r_out*sin(pi)],
	[room_width/2 + r_out*cos(4*pi/3), room_height/2 - r_out*sin(4*pi/3)],
	[room_width/2 + r_out*cos(5*pi/3), room_height/2 - r_out*sin(5*pi/3)],
	[room_width/2, room_height/2],
	[room_width/2 + r_in*cos(pi/6), room_height/2 - r_in*sin(pi/6)],
	[room_width/2 + r_in*cos(pi/6 + 2*pi/3), room_height/2 - r_in*sin(pi/6 + 2*pi/3)],
	[room_width/2 + r_in*cos(pi/6 + 4*pi/3), room_height/2 - r_in*sin(pi/6 + 4*pi/3)]
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
	[6, 7],
	[6, 8],
	[6, 9],
	[0, 9],
	[1, 8],
	[2, 7],
	[3, 9],
	[4, 8],
	[5, 7]
];

// Define graph
return scr_create_graph_list(coords, adj);
