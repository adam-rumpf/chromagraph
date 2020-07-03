/// @func scr_graph_grid_4x5()
/// @desc Generates the 4x5 grid graph.
/// @return {obj_graph} Graph object.

// Define vertex positions
var unit = room_height/5;
var coords =
[
	[room_width/2 - 2*unit, room_height/2 - 1.5*unit],
	[room_width/2 - unit, room_height/2 - 1.5*unit],
	[room_width/2, room_height/2 - 1.5*unit],
	[room_width/2 + unit, room_height/2 - 1.5*unit],
	[room_width/2 + 2*unit, room_height/2 - 1.5*unit],
	[room_width/2 - 2*unit, room_height/2 - 0.5*unit],
	[room_width/2 - unit, room_height/2 - 0.5*unit],
	[room_width/2, room_height/2 - 0.5*unit],
	[room_width/2 + unit, room_height/2 - 0.5*unit],
	[room_width/2 + 2*unit, room_height/2 - 0.5*unit],
	[room_width/2 - 2*unit, room_height/2 + 0.5*unit],
	[room_width/2 - unit, room_height/2 + 0.5*unit],
	[room_width/2, room_height/2 + 0.5*unit],
	[room_width/2 + unit, room_height/2 + 0.5*unit],
	[room_width/2 + 2*unit, room_height/2 + 0.5*unit],
	[room_width/2 - 2*unit, room_height/2 + 1.5*unit],
	[room_width/2 - unit, room_height/2 + 1.5*unit],
	[room_width/2, room_height/2 + 1.5*unit],
	[room_width/2 + unit, room_height/2 + 1.5*unit],
	[room_width/2 + 2*unit, room_height/2 + 1.5*unit]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[1, 2],
	[2, 3],
	[3, 4],
	[5, 6],
	[6, 7],
	[7, 8],
	[8, 9],
	[10, 11],
	[11, 12],
	[12, 13],
	[13, 14],
	[15, 16],
	[16, 17],
	[17, 18],
	[18, 19],
	[0, 5],
	[1, 6],
	[2, 7],
	[3, 8],
	[4, 9],
	[5, 10],
	[6, 11],
	[7, 12],
	[8, 13],
	[9, 14],
	[10, 15],
	[11, 16],
	[12, 17],
	[13, 18],
	[14, 19]
];

// Define graph
return scr_create_graph_list(coords, adj);
