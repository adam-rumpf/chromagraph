/// @func scr_graph_snowflake_5_3()
/// @desc Generates a snowflake-shaped graph based on 5 branches and 3 sub-branches.
/// @return {obj_graph} Graph object.

// Define vertex positions
var r1, r2;
r1 = room_height/5;
r2 = room_height/3;
var coords =
[
	[room_width/2, room_height/2],
	[room_width/2 + r1*cos(pi/2), room_height/2 - r1*sin(pi/2)],
	[room_width/2 + r1*cos(pi/2 + 2*pi/5), room_height/2 - r1*sin(pi/2 + 2*pi/5)],
	[room_width/2 + r1*cos(pi/2 + 4*pi/5), room_height/2 - r1*sin(pi/2 + 4*pi/5)],
	[room_width/2 + r1*cos(pi/2 + 6*pi/5), room_height/2 - r1*sin(pi/2 + 6*pi/5)],
	[room_width/2 + r1*cos(pi/2 + 8*pi/5), room_height/2 - r1*sin(pi/2 + 8*pi/5)],
	[room_width/2 + r2*cos(pi/2), room_height/2 - r2*sin(pi/2)],
	[room_width/2 + r2*cos(pi/2 + 2*pi/5), room_height/2 - r2*sin(pi/2 + 2*pi/5)],
	[room_width/2 + r2*cos(pi/2 + 4*pi/5), room_height/2 - r2*sin(pi/2 + 4*pi/5)],
	[room_width/2 + r2*cos(pi/2 + 6*pi/5), room_height/2 - r2*sin(pi/2 + 6*pi/5)],
	[room_width/2 + r2*cos(pi/2 + 8*pi/5), room_height/2 - r2*sin(pi/2 + 8*pi/5)],
	[room_width/2 + r2*cos(pi/10 + pi/2), room_height/2 - r2*sin(pi/10 + pi/2)],
	[room_width/2 + r2*cos(pi/10 + pi/2 + 2*pi/5), room_height/2 - r2*sin(pi/10 + pi/2 + 2*pi/5)],
	[room_width/2 + r2*cos(pi/10 + pi/2 + 4*pi/5), room_height/2 - r2*sin(pi/10 + pi/2 + 4*pi/5)],
	[room_width/2 + r2*cos(pi/10 + pi/2 + 6*pi/5), room_height/2 - r2*sin(pi/10 + pi/2 + 6*pi/5)],
	[room_width/2 + r2*cos(pi/10 + pi/2 + 8*pi/5), room_height/2 - r2*sin(pi/10 + pi/2 + 8*pi/5)],
	[room_width/2 + r2*cos(-pi/10 + pi/2), room_height/2 - r2*sin(-pi/10 + pi/2)],
	[room_width/2 + r2*cos(-pi/10 + pi/2 + 2*pi/5), room_height/2 - r2*sin(-pi/10 + pi/2 + 2*pi/5)],
	[room_width/2 + r2*cos(-pi/10 + pi/2 + 4*pi/5), room_height/2 - r2*sin(-pi/10 + pi/2 + 4*pi/5)],
	[room_width/2 + r2*cos(-pi/10 + pi/2 + 6*pi/5), room_height/2 - r2*sin(-pi/10 + pi/2 + 6*pi/5)],
	[room_width/2 + r2*cos(-pi/10 + pi/2 + 8*pi/5), room_height/2 - r2*sin(-pi/10 + pi/2 + 8*pi/5)]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[0, 2],
	[0, 3],
	[0, 4],
	[0, 5],
	[1, 6],
	[2, 7],
	[3, 8],
	[4, 9],
	[5, 10],
	[1, 11],
	[2, 12],
	[3, 13],
	[4, 14],
	[5, 15],
	[1, 16],
	[2, 17],
	[3, 18],
	[4, 19],
	[5, 20]
];

// Define graph
return scr_create_graph_list(coords, adj);
