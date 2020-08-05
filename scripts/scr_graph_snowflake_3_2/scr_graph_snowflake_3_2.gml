/// @func scr_graph_snowflake_3_2()
/// @desc Generates a snowflake-shaped graph based on 3 branches and 2 sub-branches.
/// @return {obj_graph} Graph object.

// Define vertex positions
var r1, r2;
r1 = room_height/5;
r2 = room_height/3;
var coords =
[
	[room_width/2, room_height/2],
	[room_width/2, room_height/2 - r1],
	[room_width/2 + r1*cos(pi/2 + pi/3), room_height/2 + r1*sin(pi/2 + pi/3)],
	[room_width/2 + r1*cos(pi/2 - pi/3), room_height/2 + r1*sin(pi/2 - pi/3)],
	[room_width/2 + r2*cos(pi/2 + pi/10), room_height/2 - r2*sin(pi/2 + pi/10)],
	[room_width/2 + r2*cos(pi/2 - pi/10), room_height/2 - r2*sin(pi/2 - pi/10)],
	[room_width/2 + r2*cos(pi/2 + pi/3 + pi/10), room_height/2 + r2*sin(pi/2 + pi/3 + pi/10)],
	[room_width/2 + r2*cos(pi/2 + pi/3 - pi/10), room_height/2 + r2*sin(pi/2 + pi/3 - pi/10)],
	[room_width/2 + r2*cos(pi/2 - pi/3 + pi/10), room_height/2 + r2*sin(pi/2 - pi/3 + pi/10)],
	[room_width/2 + r2*cos(pi/2 - pi/3 - pi/10), room_height/2 + r2*sin(pi/2 - pi/3 - pi/10)]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[0, 2],
	[0, 3],
	[1, 4],
	[1, 5],
	[2, 6],
	[2, 7],
	[3, 8],
	[3, 9]
];

// Define graph
return scr_create_graph_list(coords, adj);
