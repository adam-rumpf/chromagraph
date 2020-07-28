/// @func scr_graph_c6_cart_p4()
/// @desc Generates the Cartesian product of C6 and P4.
/// @return {obj_graph} Graph object.

// Define vertex positions
var template = [];
template[0,0] = 0;
template[0,1] = -3*room_height/7;
template[1,0] = -room_height/10;
template[1,1] = -2*room_height/7;
template[2,0] = -room_height/10;
template[2,1] = room_height/7;
template[3,0] = 0;
template[3,1] = 3*room_height/7;
template[4,0] = room_height/10;
template[4,1] = 2*room_height/7;
template[5,0] = room_height/10;
template[5,1] = -room_height/7;
var coords =
[
	[room_width/2 - 3*room_height/5 + template[0,0], room_height/2 + template[0,1]],
	[room_width/2 - 3*room_height/5 + template[1,0], room_height/2 + template[1,1]],
	[room_width/2 - 3*room_height/5 + template[2,0], room_height/2 + template[2,1]],
	[room_width/2 - 3*room_height/5 + template[3,0], room_height/2 + template[3,1]],
	[room_width/2 - 3*room_height/5 + template[4,0], room_height/2 + template[4,1]],
	[room_width/2 - 3*room_height/5 + template[5,0], room_height/2 + template[5,1]],
	[room_width/2 - room_height/5 + template[0,0], room_height/2 + template[0,1]],
	[room_width/2 - room_height/5 + template[1,0], room_height/2 + template[1,1]],
	[room_width/2 - room_height/5 + template[2,0], room_height/2 + template[2,1]],
	[room_width/2 - room_height/5 + template[3,0], room_height/2 + template[3,1]],
	[room_width/2 - room_height/5 + template[4,0], room_height/2 + template[4,1]],
	[room_width/2 - room_height/5 + template[5,0], room_height/2 + template[5,1]],
	[room_width/2 + room_height/5 + template[0,0], room_height/2 + template[0,1]],
	[room_width/2 + room_height/5 + template[1,0], room_height/2 + template[1,1]],
	[room_width/2 + room_height/5 + template[2,0], room_height/2 + template[2,1]],
	[room_width/2 + room_height/5 + template[3,0], room_height/2 + template[3,1]],
	[room_width/2 + room_height/5 + template[4,0], room_height/2 + template[4,1]],
	[room_width/2 + room_height/5 + template[5,0], room_height/2 + template[5,1]],
	[room_width/2 + 3*room_height/5 + template[0,0], room_height/2 + template[0,1]],
	[room_width/2 + 3*room_height/5 + template[1,0], room_height/2 + template[1,1]],
	[room_width/2 + 3*room_height/5 + template[2,0], room_height/2 + template[2,1]],
	[room_width/2 + 3*room_height/5 + template[3,0], room_height/2 + template[3,1]],
	[room_width/2 + 3*room_height/5 + template[4,0], room_height/2 + template[4,1]],
	[room_width/2 + 3*room_height/5 + template[5,0], room_height/2 + template[5,1]]
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
	[6, 7],
	[7, 8],
	[8, 9],
	[9, 10],
	[10, 11],
	[11, 6],
	[12, 13],
	[13, 14],
	[14, 15],
	[15, 16],
	[16, 17],
	[17, 12],
	[18, 19],
	[19, 20],
	[20, 21],
	[21, 22],
	[22, 23],
	[23, 18],
	[0, 6],
	[1, 7],
	[2, 8],
	[3, 9],
	[4, 10],
	[5, 11],
	[6, 12],
	[7, 13],
	[8, 14],
	[9, 15],
	[10, 16],
	[11, 17],
	[12, 18],
	[13, 19],
	[14, 20],
	[15, 21],
	[16, 22],
	[17, 23]
];

// Define graph
return scr_create_graph_list(coords, adj);
