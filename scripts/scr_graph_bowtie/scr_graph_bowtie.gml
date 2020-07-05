/// @func scr_graph_bowtie()
/// @desc Generates the bowtie graph.
/// @return {obj_graph} Graph object.

// Define vertex positions
var r = room_height/3;
var coords =
[
	[room_width/2, room_height/2],
	[room_width/2 - r*cos(pi/6), room_height/2 - r*sin(pi/6)],
	[room_width/2 - r*cos(pi/6), room_height/2 + r*sin(pi/6)],
	[room_width/2 + r*cos(pi/6), room_height/2 - r*sin(pi/6)],
	[room_width/2 + r*cos(pi/6), room_height/2 + r*sin(pi/6)]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[1, 2],
	[2, 0],
	[0, 3],
	[3, 4],
	[4, 0]
];

// Define graph
return scr_create_graph_list(coords, adj);
