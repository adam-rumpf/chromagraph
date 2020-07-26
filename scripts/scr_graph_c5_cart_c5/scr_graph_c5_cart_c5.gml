/// @func scr_graph_c5_cart_c5()
/// @desc Generates the Cartesian product of C5 and C5.
/// @return {obj_graph} Graph object.

// Define vertex positions
var template = [];
template[0,0] = 0;
template[0,1] = -2*room_height/5;
template[1,0] = room_height/20;
template[1,1] = -room_height/5;
template[2,0] = room_height/20;
template[2,1] = room_height/5;
template[3,0] = 0;
template[3,1] = 2*room_height/5;
template[4,0] = -room_height/20;
template[4,1] = 0;
var coords =
[
	[room_width/2 - 2*room_height/5 + template[0,0], room_height/2 + template[0,1] + template[0,0]],
	[room_width/2 - 2*room_height/5 + template[1,0], room_height/2 + template[1,1] + template[0,0]],
	[room_width/2 - 2*room_height/5 + template[2,0], room_height/2 + template[2,1] + template[0,0]],
	[room_width/2 - 2*room_height/5 + template[3,0], room_height/2 + template[3,1] + template[0,0]],
	[room_width/2 - 2*room_height/5 + template[4,0], room_height/2 + template[4,1] + template[0,0]],
	[room_width/2 - room_height/5 + template[0,0], room_height/2 + template[0,1] + template[1,0]],
	[room_width/2 - room_height/5 + template[1,0], room_height/2 + template[1,1] + template[1,0]],
	[room_width/2 - room_height/5 + template[2,0], room_height/2 + template[2,1] + template[1,0]],
	[room_width/2 - room_height/5 + template[3,0], room_height/2 + template[3,1] + template[1,0]],
	[room_width/2 - room_height/5 + template[4,0], room_height/2 + template[4,1] + template[1,0]],
	[room_width/2 + template[0,0], room_height/2 + template[0,1] + template[4,0]],
	[room_width/2 + template[1,0], room_height/2 + template[1,1] + template[4,0]],
	[room_width/2 + template[2,0], room_height/2 + template[2,1] + template[4,0]],
	[room_width/2 + template[3,0], room_height/2 + template[3,1] + template[4,0]],
	[room_width/2 + template[4,0], room_height/2 + template[4,1] + template[4,0]],
	[room_width/2 + room_height/5 + template[0,0], room_height/2 + template[0,1] + template[2,0]],
	[room_width/2 + room_height/5 + template[1,0], room_height/2 + template[1,1] + template[2,0]],
	[room_width/2 + room_height/5 + template[2,0], room_height/2 + template[2,1] + template[2,0]],
	[room_width/2 + room_height/5 + template[3,0], room_height/2 + template[3,1] + template[2,0]],
	[room_width/2 + room_height/5 + template[4,0], room_height/2 + template[4,1] + template[2,0]],
	[room_width/2 + 2*room_height/5 + template[0,0], room_height/2 + template[0,1] + template[3,0]],
	[room_width/2 + 2*room_height/5 + template[1,0], room_height/2 + template[1,1] + template[3,0]],
	[room_width/2 + 2*room_height/5 + template[2,0], room_height/2 + template[2,1] + template[3,0]],
	[room_width/2 + 2*room_height/5 + template[3,0], room_height/2 + template[3,1] + template[3,0]],
	[room_width/2 + 2*room_height/5 + template[4,0], room_height/2 + template[4,1] + template[3,0]]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[1, 2],
	[2, 3],
	[3, 4],
	[4, 0],
	[5, 6],
	[6, 7],
	[7, 8],
	[8, 9],
	[9, 5],
	[10, 11],
	[11, 12],
	[12, 13],
	[13, 14],
	[14, 10],
	[15, 16],
	[16, 17],
	[17, 18],
	[18, 19],
	[19, 15],
	[20, 21],
	[21, 22],
	[22, 23],
	[23, 24],
	[24, 20],
	[0, 5],
	[5, 15],
	[15, 20],
	[20, 10],
	[10, 0],
	[1, 6],
	[6, 16],
	[16, 21],
	[21, 11],
	[11, 1],
	[2, 7],
	[7, 17],
	[17, 22],
	[22, 12],
	[12, 2],
	[3, 8],
	[8, 18],
	[18, 23],
	[23, 13],
	[13, 3],
	[4, 9],
	[9, 19],
	[19, 24],
	[24, 14],
	[14, 4]
];

// Define graph
return scr_create_graph_list(coords, adj);
