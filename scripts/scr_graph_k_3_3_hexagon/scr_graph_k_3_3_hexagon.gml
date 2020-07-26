/// @func scr_graph_k_3_3_hexagon()
/// @desc Generates the K3,3 graph (hexagonal embedding).
/// @return {obj_graph} Graph object.

// Define vertex 
var r = room_height/3;
var coords =
[
	[room_width/2 + r, room_height/2],
	[room_width/2 + r*cos(2*pi*(1/6)), room_height/2 - r*sin(2*pi*(1/6))],
	[room_width/2 + r*cos(2*pi*(2/6)), room_height/2 - r*sin(2*pi*(2/6))],
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
	[5, 0],
	[0, 3],
	[1, 4],
	[2, 5]
];

// Define graph
return scr_create_graph_list(coords, adj);
