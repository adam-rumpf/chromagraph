/// @func scr_graph_fullerene26()
/// @desc Generates a 26-fullerene graph.
/// @return {obj_graph} Graph object.

// Define vertex positions
var r1, r2, r3, r4, r5, r6;
r6 = 2*room_height/5;
r5 = 0.75*r6;
r4 = 0.85*r5;
r3 = 0.5*r4;
r2 = 1.2*r3;
r1 = 0.5*r2;
var coords =
[
	[room_width/2 - r1, room_height/2],
	[room_width/2 + r1, room_height/2],
	[room_width/2 - r2*cos(pi/6), room_height/2 - r2*sin(pi/6)],
	[room_width/2 + r2*cos(pi/6), room_height/2 - r2*sin(pi/6)],
	[room_width/2 + r2*cos(pi/6), room_height/2 + r2*sin(pi/6)],
	[room_width/2 - r2*cos(pi/6), room_height/2 + r2*sin(pi/6)],
	[room_width/2, room_height/2 - r3],
	[room_width/2, room_height/2 + r3],
	[room_width/2 - r4*cos(pi/6), room_height/2 - r4*sin(pi/6)],
	[room_width/2, room_height/2 - r4],
	[room_width/2 + r4*cos(pi/6), room_height/2 - r4*sin(pi/6)],
	[room_width/2 + r4*cos(pi/6), room_height/2 + r4*sin(pi/6)],
	[room_width/2, room_height/2 + r4],
	[room_width/2 - r4*cos(pi/6), room_height/2 + r4*sin(pi/6)],
	[room_width/2 - r5, room_height/2],
	[room_width/2 - r5*cos(pi/3), room_height/2 - r5*sin(pi/3)],
	[room_width/2 + r5*cos(pi/3), room_height/2 - r5*sin(pi/3)],
	[room_width/2 + r5, room_height/2],
	[room_width/2 + r5*cos(pi/3), room_height/2 + r5*sin(pi/3)],
	[room_width/2 - r5*cos(pi/3), room_height/2 + r5*sin(pi/3)],
	[room_width/2 - r6, room_height/2],
	[room_width/2 - r6*cos(pi/3), room_height/2 - r6*sin(pi/3)],
	[room_width/2 + r6*cos(pi/3), room_height/2 - r6*sin(pi/3)],
	[room_width/2 + r6, room_height/2],
	[room_width/2 + r6*cos(pi/3), room_height/2 + r6*sin(pi/3)],
	[room_width/2 - r6*cos(pi/3), room_height/2 + r6*sin(pi/3)]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[0, 2],
	[1, 3],
	[1, 4],
	[0, 5],
	[2, 6],
	[6, 3],
	[4, 7],
	[7, 5],
	[2, 8],
	[6, 9],
	[3, 10],
	[4, 11],
	[7, 12],
	[5, 13],
	[8, 15],
	[9, 16],
	[10, 17],
	[11, 18],
	[12, 19],
	[13, 14],
	[8, 14],
	[9, 15],
	[10, 16],
	[11, 17],
	[12, 18],
	[13, 19],
	[14, 20],
	[15, 21],
	[16, 22],
	[17, 23],
	[18, 24],
	[19, 25],
	[20, 21],
	[21, 22],
	[22, 23],
	[23, 24],
	[24, 25],
	[25, 20]
];

// Define graph
return scr_create_graph_list(coords, adj);
