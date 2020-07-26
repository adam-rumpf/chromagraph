/// @func scr_graph_k8_subset_deformed()
/// @desc Generates a subset of K8 embedded in an asymmetric way.
/// @return {obj_graph} Graph object.

// Define vertex positions
var r = room_height/3;
/*var coords =
[
	[room_width/2 + r*cos(2*pi*(0/8)), room_height/2 - r*sin(2*pi*(0/8))],
	[room_width/2 + r*cos(2*pi*(1/8)), room_height/2 - r*sin(2*pi*(1/8))],
	[room_width/2 + r*cos(2*pi*(2/8)), room_height/2 - r*sin(2*pi*(2/8))],
	[room_width/2 + r*cos(2*pi*(3/8)), room_height/2 - r*sin(2*pi*(3/8))],
	[room_width/2 + r*cos(2*pi*(4/8)), room_height/2 - r*sin(2*pi*(4/8))],
	[room_width/2 + r*cos(2*pi*(5/8)), room_height/2 - r*sin(2*pi*(5/8))],
	[room_width/2 + r*cos(2*pi*(6/8)), room_height/2 - r*sin(2*pi*(6/8))],
	[room_width/2 + r*cos(2*pi*(7/8)), room_height/2 - r*sin(2*pi*(7/8))]
];*/
var coords =
[
	[room_width/2, room_height/2 - r/4],
	[room_width/2 + r*cos(2*pi*(0/6)), room_height/2 - r*sin(2*pi*(0/6))],
	[room_width/2 + r*cos(2*pi*(1/6)), room_height/2 - r*sin(2*pi*(1/6))],
	[room_width/2 + r*cos(2*pi*(2/6)), room_height/2 - r*sin(2*pi*(2/6))],
	[room_width/2, room_height/2 + r/4],
	[room_width/2 + r*cos(2*pi*(3/6)), room_height/2 - r*sin(2*pi*(3/6))],
	[room_width/2 + r*cos(2*pi*(4/6)), room_height/2 - r*sin(2*pi*(4/6))],
	[room_width/2 + r*cos(2*pi*(5/6)), room_height/2 - r*sin(2*pi*(5/6))]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[1, 2],
	[2, 3],
	[3, 4],
	[4, 5],
	[5, 6],
	[6, 7],
	[7, 0],
	[0, 2],
	[1, 3],
	[2, 4],
	[3, 5],
	[4, 6],
	[5, 7],
	[6, 0],
	[7, 1],
	[0, 3],
	[1, 4],
	[2, 5],
	[3, 6],
	[4, 7],
	[5, 0],
	[6, 1],
	[7, 2]
];

// Define graph
return scr_create_graph_list(coords, adj);
