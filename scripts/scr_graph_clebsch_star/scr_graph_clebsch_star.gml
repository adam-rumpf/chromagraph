/// @func scr_graph_clebsch_star()
/// @desc Generates the Clebsch graph (star embedding).
/// @return {obj_graph} Graph object.

// Define vertex positions
var r1, r2, r3;
r1 = room_height/10;
r2 = room_height/4.5;
r3 = room_height/3;
var coords =
[
	[room_width/2, room_height/2],
	[room_width/2, room_height/2 - r1],
	[room_width/2 + r1*cos(pi/2 + 2*pi/5), room_height/2 - r1*sin(pi/2 + 2*pi/5)],
	[room_width/2 + r1*cos(pi/2 + 4*pi/5), room_height/2 - r1*sin(pi/2 + 4*pi/5)],
	[room_width/2 + r1*cos(pi/2 + 6*pi/5), room_height/2 - r1*sin(pi/2 + 6*pi/5)],
	[room_width/2 + r1*cos(pi/2 + 8*pi/5), room_height/2 - r1*sin(pi/2 + 8*pi/5)],
	[room_width/2, room_height/2 + r2],
	[room_width/2 + r2*cos(-pi/2 + 2*pi/5), room_height/2 - r2*sin(-pi/2 + 2*pi/5)],
	[room_width/2 + r2*cos(-pi/2 + 4*pi/5), room_height/2 - r2*sin(-pi/2 + 4*pi/5)],
	[room_width/2 + r2*cos(-pi/2 + 6*pi/5), room_height/2 - r2*sin(-pi/2 + 6*pi/5)],
	[room_width/2 + r2*cos(-pi/2 + 8*pi/5), room_height/2 - r2*sin(-pi/2 + 8*pi/5)],
	[room_width/2, room_height/2 - r3],
	[room_width/2 + r3*cos(pi/2 + 2*pi/5), room_height/2 - r3*sin(pi/2 + 2*pi/5)],
	[room_width/2 + r3*cos(pi/2 + 4*pi/5), room_height/2 - r3*sin(pi/2 + 4*pi/5)],
	[room_width/2 + r3*cos(pi/2 + 6*pi/5), room_height/2 - r3*sin(pi/2 + 6*pi/5)],
	[room_width/2 + r3*cos(pi/2 + 8*pi/5), room_height/2 - r3*sin(pi/2 + 8*pi/5)]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 6],
	[0, 7],
	[0, 8],
	[0, 9],
	[0, 10],
	[1, 3],
	[3, 5],
	[5, 2],
	[2, 4],
	[4, 1],
	[1, 8],
	[1, 9],
	[2, 9],
	[2, 10],
	[3, 10],
	[3, 6],
	[4, 6],
	[4, 7],
	[5, 7],
	[5, 8],
	[6, 12],
	[6, 15],
	[7, 13],
	[7, 11],
	[8, 14],
	[8, 12],
	[9, 15],
	[9, 13],
	[10, 11],
	[10, 14],
	[1, 11],
	[2, 12],
	[3, 13],
	[4, 14],
	[5, 15],
	[11, 12],
	[12, 13],
	[13, 14],
	[14, 15],
	[15, 11]
];

// Define graph
return scr_create_graph_list(coords, adj);
