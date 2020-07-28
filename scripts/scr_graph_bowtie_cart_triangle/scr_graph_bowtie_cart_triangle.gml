/// @func scr_graph_bowtie_cart_triangle()
/// @desc Generates the Cartesian product of the bowtie graph and K3.
/// @return {obj_graph} Graph object.

// Define vertex positions
var unit = room_width/7;
var coords =
[
	[room_width/2 - 5*unit, room_height/2 - unit],
	[room_width/2 - 5*unit, room_height/2 + unit],
	[room_width/2 - 4*unit, room_height/2 - 3*unit],
	[room_width/2 - 2*unit, room_height/2 - 1.5*unit],
	[room_width/2 - 2*unit, room_height/2 + 1.5*unit],
	[room_width/2 - 4*unit, room_height/2 + 3*unit],
	[room_width/2 - unit, room_height/2],
	[room_width/2, room_height/2 - 1.5*unit],
	[room_width/2, room_height/2 + 1.5*unit],
	[room_width/2 + 2*unit, room_height/2 - unit],
	[room_width/2 + 2*unit, room_height/2 + unit],
	[room_width/2 + 3*unit, room_height/2 - 3*unit],
	[room_width/2 + 3*unit, room_height/2 + 3*unit],
	[room_width/2 + 5*unit, room_height/2 - 2*unit],
	[room_width/2 + 5*unit, room_height/2 + 2*unit]
];

// Define pairs of adjacent vertices
var adj =
[
	[8, 14],
	[7, 11],
	[6, 9],
	[14, 12],
	[11, 13],
	[9, 10],
	[12, 8],
	[13, 7],
	[10, 6],
	[8, 4],
	[7, 2],
	[6, 0],
	[4, 5],
	[2, 3],
	[0, 1],
	[5, 8],
	[3, 7],
	[1, 6],
	[8, 7],
	[14, 11],
	[12, 13],
	[4, 2],
	[5, 3],
	[7, 6],
	[11, 9],
	[13, 10],
	[2, 0],
	[3, 1],
	[6, 8],
	[9, 14],
	[10, 12],
	[0, 4],
	[1, 5]
];

// Define graph
return scr_create_graph_list(coords, adj);
