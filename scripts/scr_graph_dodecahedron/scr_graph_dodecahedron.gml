/// @func scr_graph_dodecahedron()
/// @desc Generates the dodecahedron net.
/// @return {obj_graph} Graph object.

// Define vertex positions
var r1 = 0.2*(room_height/2);
var r2 = 0.4*(room_height/2);
var r3 = 0.55*(room_height/2);
var r4 = 0.75*(room_height/2);
var coords =
[
	[room_width/2, room_height/2 + r1],
	[room_width/2 + r1*cos(3*pi/2 + 2*pi/5), room_height/2 - r1*sin(3*pi/2 + 2*pi/5)],
	[room_width/2 + r1*cos(3*pi/2 + 4*pi/5), room_height/2 - r1*sin(3*pi/2 + 4*pi/5)],
	[room_width/2 + r1*cos(3*pi/2 + 6*pi/5), room_height/2 - r1*sin(3*pi/2 + 6*pi/5)],
	[room_width/2 + r1*cos(3*pi/2 + 8*pi/5), room_height/2 - r1*sin(3*pi/2 + 8*pi/5)],
	[room_width/2, room_height/2 + r2],
	[room_width/2 + r2*cos(3*pi/2 + 2*pi/5), room_height/2 - r2*sin(3*pi/2 + 2*pi/5)],
	[room_width/2 + r2*cos(3*pi/2 + 4*pi/5), room_height/2 - r2*sin(3*pi/2 + 4*pi/5)],
	[room_width/2 + r2*cos(3*pi/2 + 6*pi/5), room_height/2 - r2*sin(3*pi/2 + 6*pi/5)],
	[room_width/2 + r2*cos(3*pi/2 + 8*pi/5), room_height/2 - r2*sin(3*pi/2 + 8*pi/5)],
	[room_width/2, room_height/2 - r3],
	[room_width/2 + r3*cos(pi/2 + 2*pi/5), room_height/2 - r3*sin(pi/2 + 2*pi/5)],
	[room_width/2 + r3*cos(pi/2 + 4*pi/5), room_height/2 - r3*sin(pi/2 + 4*pi/5)],
	[room_width/2 + r3*cos(pi/2 + 6*pi/5), room_height/2 - r3*sin(pi/2 + 6*pi/5)],
	[room_width/2 + r3*cos(pi/2 + 8*pi/5), room_height/2 - r3*sin(pi/2 + 8*pi/5)],
	[room_width/2, room_height/2 - r4],
	[room_width/2 + r4*cos(pi/2 + 2*pi/5), room_height/2 - r4*sin(pi/2 + 2*pi/5)],
	[room_width/2 + r4*cos(pi/2 + 4*pi/5), room_height/2 - r4*sin(pi/2 + 4*pi/5)],
	[room_width/2 + r4*cos(pi/2 + 6*pi/5), room_height/2 - r4*sin(pi/2 + 6*pi/5)],
	[room_width/2 + r4*cos(pi/2 + 8*pi/5), room_height/2 - r4*sin(pi/2 + 8*pi/5)],
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[1, 2],
	[2, 3],
	[3, 4],
	[4, 0],
	[0, 5],
	[1, 6],
	[2, 7],
	[3, 8],
	[4, 9],
	[10, 15],
	[11, 16],
	[12, 17],
	[13, 18],
	[14, 19],
	[15, 16],
	[16, 17],
	[17, 18],
	[18, 19],
	[19, 15],
	[5, 13],
	[13, 6],
	[6, 14],
	[14, 7],
	[7, 10],
	[10, 8],
	[8, 11],
	[11, 9],
	[9, 12],
	[12, 5]
];

// Define graph
return scr_create_graph_list(coords, adj);
