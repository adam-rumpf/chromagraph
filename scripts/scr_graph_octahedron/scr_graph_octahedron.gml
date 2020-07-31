/// @func scr_graph_octahedron()
/// @desc Generates the net of an octahedron.
/// @return {obj_graph} Graph object.

// Define vertex positions
var r1, r2;
r1 = room_height/10;
r2 = room_height/3;
var coords =
[
	[room_width/2, room_height/2 + r1],
	[room_width/2 + r1*cos(pi/6), room_height/2 - r1*sin(pi/6)],
	[room_width/2 - r1*cos(pi/6), room_height/2 - r1*sin(pi/6)],
	[room_width/2, room_height/2 - r2],
	[room_width/2 - r2*cos(pi/6), room_height/2 + r2*sin(pi/6)],
	[room_width/2 + r2*cos(pi/6), room_height/2 + r2*sin(pi/6)]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[1, 2],
	[2, 0],
	[3, 4],
	[4, 5],
	[5, 3],
	[0, 4],
	[1, 5],
	[2, 3],
	[0, 5],
	[1, 3],
	[2, 4]
];

// Define graph
return scr_create_graph_list(coords, adj);
