/// @func scr_graph_chord()
/// @desc Generates the graph of a cycle with several chords.
/// @return {obj_graph} Graph object.

// Define vertex positions
var r = room_height/3;
var coords =
[
	[room_width/2 + r*cos(-pi/16), room_height/2 - r*sin(-pi/16)],
	[room_width/2 + r*cos(pi/8 - pi/16), room_height/2 - r*sin(pi/8 - pi/16)],
	[room_width/2 + r*cos(2*pi/8 - pi/16), room_height/2 - r*sin(2*pi/8 - pi/16)],
	[room_width/2 + r*cos(3*pi/8 - pi/16), room_height/2 - r*sin(3*pi/8 - pi/16)],
	[room_width/2 + r*cos(4*pi/8 - pi/16), room_height/2 - r*sin(4*pi/8 - pi/16)],
	[room_width/2 + r*cos(5*pi/8 - pi/16), room_height/2 - r*sin(5*pi/8 - pi/16)],
	[room_width/2 + r*cos(6*pi/8 - pi/16), room_height/2 - r*sin(6*pi/8 - pi/16)],
	[room_width/2 + r*cos(7*pi/8 - pi/16), room_height/2 - r*sin(7*pi/8 - pi/16)],
	[room_width/2 + r*cos(pi - pi/16), room_height/2 - r*sin(pi - pi/16)],
	[room_width/2 + r*cos(9*pi/8 - pi/16), room_height/2 - r*sin(9*pi/8 - pi/16)],
	[room_width/2 + r*cos(10*pi/8 - pi/16), room_height/2 - r*sin(10*pi/8 - pi/16)],
	[room_width/2 + r*cos(11*pi/8 - pi/16), room_height/2 - r*sin(11*pi/8 - pi/16)],
	[room_width/2 + r*cos(12*pi/8 - pi/16), room_height/2 - r*sin(12*pi/8 - pi/16)],
	[room_width/2 + r*cos(13*pi/8 - pi/16), room_height/2 - r*sin(13*pi/8 - pi/16)],
	[room_width/2 + r*cos(14*pi/8 - pi/16), room_height/2 - r*sin(14*pi/8 - pi/16)],
	[room_width/2 + r*cos(15*pi/8 - pi/16), room_height/2 - r*sin(15*pi/8 - pi/16)]
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
	[10, 11],
	[11, 12],
	[12, 13],
	[13, 14],
	[14, 15],
	[15, 0],
	[0, 5],
	[4, 9],
	[8, 13],
	[12, 1],
	[2, 7],
	[6, 11],
	[10, 15],
	[14, 3]
];

// Define graph
return scr_create_graph_list(coords, adj);
