/// @func scr_graph_petersen_circle()
/// @desc Generates the petersen graph (circle with claw embedding).
/// @return {obj_graph} Graph object.

// Define vertex positions
var r = 0.6*(room_height/2);
var coords =
[
	[room_width/2, room_height/2],
	[room_width/2, room_height/2 - r],
	[room_width/2 + r*cos(pi/2 + 2*pi/9), room_height/2 - r*sin(pi/2 + 2*pi/9)],
	[room_width/2 + r*cos(pi/2 + 4*pi/9), room_height/2 - r*sin(pi/2 + 4*pi/9)],
	[room_width/2 + r*cos(pi/2 + 6*pi/9), room_height/2 - r*sin(pi/2 + 6*pi/9)],
	[room_width/2 + r*cos(pi/2 + 8*pi/9), room_height/2 - r*sin(pi/2 + 8*pi/9)],
	[room_width/2 + r*cos(pi/2 + 10*pi/9), room_height/2 - r*sin(pi/2 + 10*pi/9)],
	[room_width/2 + r*cos(pi/2 + 12*pi/9), room_height/2 - r*sin(pi/2 + 12*pi/9)],
	[room_width/2 + r*cos(pi/2 + 14*pi/9), room_height/2 - r*sin(pi/2 + 14*pi/9)],
	[room_width/2 + r*cos(pi/2 + 16*pi/9), room_height/2 - r*sin(pi/2 + 16*pi/9)]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[0, 4],
	[0, 7],
	[1, 2],
	[2, 3],
	[3, 4],
	[4, 5],
	[5, 6],
	[6, 7],
	[7, 8],
	[8, 9],
	[9, 1],
	[2, 6],
	[5, 9],
	[8, 3]
];

// Define graph
return scr_create_graph_list(coords, adj);
