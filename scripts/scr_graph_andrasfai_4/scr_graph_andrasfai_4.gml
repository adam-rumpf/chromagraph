/// @func scr_graph_andrasfai_4()
/// @desc Generates the Andrasfai graph (n = 4).
/// @return {obj_graph} Graph object.

// Define vertex positions
var r = room_width/3;
var coords =
[
	[room_width/2 + r, room_height/2],
	[room_width/2 + r*cos(2*pi/11), room_height/2 - r*sin(2*pi/11)],
	[room_width/2 + r*cos(4*pi/11), room_height/2 - r*sin(4*pi/11)],
	[room_width/2 + r*cos(6*pi/11), room_height/2 - r*sin(6*pi/11)],
	[room_width/2 + r*cos(8*pi/11), room_height/2 - r*sin(8*pi/11)],
	[room_width/2 + r*cos(10*pi/11), room_height/2 - r*sin(10*pi/11)],
	[room_width/2 + r*cos(12*pi/11), room_height/2 - r*sin(12*pi/11)],
	[room_width/2 + r*cos(14*pi/11), room_height/2 - r*sin(14*pi/11)],
	[room_width/2 + r*cos(16*pi/11), room_height/2 - r*sin(16*pi/11)],
	[room_width/2 + r*cos(18*pi/11), room_height/2 - r*sin(18*pi/11)],
	[room_width/2 + r*cos(20*pi/11), room_height/2 - r*sin(20*pi/11)]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[1, 2],
	[2, 3],
	[3, 4],
	[4, 5],
	[5, 6],
	[6, 7],
	[7, 8],
	[8, 9],
	[9, 10],
	[10, 0],
	[0, 4],
	[1, 5],
	[2, 6],
	[3, 7],
	[4, 8],
	[5, 9],
	[6, 10],
	[7, 0],
	[8, 1],
	[9, 2],
	[10, 3]
];

// Define graph
return scr_create_graph_list(coords, adj);
