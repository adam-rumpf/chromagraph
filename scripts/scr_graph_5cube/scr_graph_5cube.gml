/// @func scr_graph_5cube()
/// @desc Generates the 5-cube graph.
/// @return {obj_graph} Graph object.

// Define vertex positions
var r1, r2;
r1 = room_height/6;
r2 = room_height/3;
var coords =
[
	[room_width/2, room_height/2],
	[room_width/2 + r1, room_height/2],
	[room_width/2 + r1*cos(pi/5), room_height/2 - r1*sin(pi/5)],
	[room_width/2 + r1*cos(2*pi/5), room_height/2 - r1*sin(2*pi/5)],
	[room_width/2 + r1*cos(3*pi/5), room_height/2 - r1*sin(3*pi/5)],
	[room_width/2 + r1*cos(4*pi/5), room_height/2 - r1*sin(4*pi/5)],
	[room_width/2 + r1*cos(5*pi/5), room_height/2 - r1*sin(5*pi/5)],
	[room_width/2 + r1*cos(6*pi/5), room_height/2 - r1*sin(6*pi/5)],
	[room_width/2 + r1*cos(7*pi/5), room_height/2 - r1*sin(7*pi/5)],
	[room_width/2 + r1*cos(8*pi/5), room_height/2 - r1*sin(8*pi/5)],
	[room_width/2 + r1*cos(9*pi/5), room_height/2 - r1*sin(9*pi/5)],
	[room_width/2 + r2, room_height/2],
	[room_width/2 + r2*cos(pi/5), room_height/2 - r2*sin(pi/5)],
	[room_width/2 + r2*cos(2*pi/5), room_height/2 - r2*sin(2*pi/5)],
	[room_width/2 + r2*cos(3*pi/5), room_height/2 - r2*sin(3*pi/5)],
	[room_width/2 + r2*cos(4*pi/5), room_height/2 - r2*sin(4*pi/5)],
	[room_width/2 + r2*cos(5*pi/5), room_height/2 - r2*sin(5*pi/5)],
	[room_width/2 + r2*cos(6*pi/5), room_height/2 - r2*sin(6*pi/5)],
	[room_width/2 + r2*cos(7*pi/5), room_height/2 - r2*sin(7*pi/5)],
	[room_width/2 + r2*cos(8*pi/5), room_height/2 - r2*sin(8*pi/5)],
	[room_width/2 + r2*cos(9*pi/5), room_height/2 - r2*sin(9*pi/5)],
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[0, 2],
	[0, 3],
	[0, 4],
	[0, 5],
	[0, 6],
	[0, 7],
	[0, 8],
	[0, 9],
	[0, 10],
	[1, 12],
	[2, 13],
	[3, 14],
	[4, 15],
	[5, 16],
	[6, 17],
	[7, 18],
	[8, 19],
	[9, 20],
	[10, 11],
	[1, 20],
	[2, 11],
	[3, 12],
	[4, 13],
	[5, 14],
	[6, 15],
	[7, 16],
	[8, 17],
	[9, 18],
	[10, 19],
	[11, 12],
	[12, 13],
	[13, 14],
	[14, 15],
	[15, 16],
	[16, 17],
	[17, 18],
	[18, 19],
	[19, 20],
	[20, 11]
];

// Define graph
return scr_create_graph_list(coords, adj);
