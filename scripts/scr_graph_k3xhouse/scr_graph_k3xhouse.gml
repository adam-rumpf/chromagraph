/// @func scr_graph_k3xhouse()
/// @desc Generates the categorical product of K3 and a house graph.
/// @return {obj_graph} Graph object.

// Define vertex positions
var r1, r2, r3;
r1 = room_height/12;
r2 = room_height/4;
r3 = 2*room_height/5;
var coords =
[
	[room_width/2 - r1, room_height/2],
	[room_width/2 + r1*cos(pi/3), room_height/2 - r1*sin(pi/3)],
	[room_width/2 + r1*cos(pi/3), room_height/2 + r1*sin(pi/3)],
	[room_width/2 - r2, room_height/2],
	[room_width/2 - r2*cos(pi/3), room_height/2 - r2*sin(pi/3)],
	[room_width/2 + r2*cos(pi/3), room_height/2 - r2*sin(pi/3)],
	[room_width/2 + r2, room_height/2],
	[room_width/2 + r2*cos(pi/3), room_height/2 + r2*sin(pi/3)],
	[room_width/2 - r2*cos(pi/3), room_height/2 + r2*sin(pi/3)],
	[room_width/2 - r3, room_height/2],
	[room_width/2 - r3*cos(pi/3), room_height/2 - r3*sin(pi/3)],
	[room_width/2 + r3*cos(pi/3), room_height/2 - r3*sin(pi/3)],
	[room_width/2 + r3, room_height/2],
	[room_width/2 + r3*cos(pi/3), room_height/2 + r3*sin(pi/3)],
	[room_width/2 - r3*cos(pi/3), room_height/2 + r3*sin(pi/3)]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 4],
	[0, 5],
	[0, 7],
	[0, 8],
	[1, 6],
	[1, 7],
	[1, 3],
	[1, 4],
	[2, 5],
	[2, 6],
	[2, 8],
	[2, 3],
	[3, 4],
	[4, 5],
	[5, 6],
	[6, 7],
	[7, 8],
	[8, 3],
	[3, 10],
	[3, 14],
	[4, 11],
	[4, 9],
	[5, 12],
	[5, 10],
	[6, 13],
	[6, 11],
	[7, 14],
	[7, 12],
	[8, 9],
	[8, 13],
	[9, 10],
	[10, 11],
	[11, 12],
	[12, 13],
	[13, 14],
	[14, 9]
];

// Define graph
return scr_create_graph_list(coords, adj);
