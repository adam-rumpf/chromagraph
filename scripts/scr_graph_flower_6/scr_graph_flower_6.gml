/// @func scr_graph_flower_6()
/// @desc Generates a flower graph (with no center) with 6 petals.
/// @return {obj_graph} Graph object.

// Define vertex positions
var r1, r2;
r1 = room_height/5;
r2 = room_height/3;
var coords =
[
	[room_width/2 + r1*cos(pi/2), room_height/2 - r1*sin(pi/2)],
	[room_width/2 + r1*cos(pi/2 + 2*pi/6), room_height/2 - r1*sin(pi/2 + 2*pi/6)],
	[room_width/2 + r1*cos(pi/2 + 4*pi/6), room_height/2 - r1*sin(pi/2 + 4*pi/6)],
	[room_width/2 + r1*cos(pi/2 + 6*pi/6), room_height/2 - r1*sin(pi/2 + 6*pi/6)],
	[room_width/2 + r1*cos(pi/2 + 8*pi/6), room_height/2 - r1*sin(pi/2 + 8*pi/6)],
	[room_width/2 + r1*cos(pi/2 + 10*pi/6), room_height/2 - r1*sin(pi/2 + 10*pi/6)],
	[room_width/2 + r2*cos(pi/8 + pi/2), room_height/2 - r2*sin(pi/8 + pi/2)],
	[room_width/2 + r2*cos(pi/8 + pi/2 + 2*pi/6), room_height/2 - r2*sin(pi/8 + pi/2 + 2*pi/6)],
	[room_width/2 + r2*cos(pi/8 + pi/2 + 4*pi/6), room_height/2 - r2*sin(pi/8 + pi/2 + 4*pi/6)],
	[room_width/2 + r2*cos(pi/8 + pi/2 + 6*pi/6), room_height/2 - r2*sin(pi/8 + pi/2 + 6*pi/6)],
	[room_width/2 + r2*cos(pi/8 + pi/2 + 8*pi/6), room_height/2 - r2*sin(pi/8 + pi/2 + 8*pi/6)],
	[room_width/2 + r2*cos(pi/8 + pi/2 + 10*pi/6), room_height/2 - r2*sin(pi/8 + pi/2 + 10*pi/6)]
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
	[1, 7],
	[2, 8],
	[3, 9],
	[4, 10],
	[5, 11],
	[6, 9],
	[7, 10],
	[8, 11],
	[6, 7],
	[7, 8],
	[8, 9],
	[9, 10],
	[10, 11],
	[11, 6]
];

// Define graph
return scr_create_graph_list(coords, adj);
