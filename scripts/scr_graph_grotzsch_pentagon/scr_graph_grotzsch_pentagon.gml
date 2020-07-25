/// @func scr_graph_grotzsch_pentagon()
/// @desc Generates the Grotzsch graph (pentagonal embedding).
/// @return {obj_graph} Graph object.

// Define vertex positions
var r_out = 0.6*(room_height/2);
var r_in = 0.7*(room_height/4);
var coords =
[
	[room_width/2, room_height/2],
	[room_width/2 + r_in*cos(pi/2), room_height/2 - r_in*sin(pi/2)],
	[room_width/2 + r_in*cos(pi/2 + 2*pi/5), room_height/2 - r_in*sin(pi/2 + 2*pi/5)],
	[room_width/2 + r_in*cos(pi/2 + 4*pi/5), room_height/2 - r_in*sin(pi/2 + 4*pi/5)],
	[room_width/2 + r_in*cos(pi/2 + 6*pi/5), room_height/2 - r_in*sin(pi/2 + 6*pi/5)],
	[room_width/2 + r_in*cos(pi/2 + 8*pi/5), room_height/2 - r_in*sin(pi/2 + 8*pi/5)],
	[room_width/2 + r_out*cos(pi/2), room_height/2 - r_out*sin(pi/2)],
	[room_width/2 + r_out*cos(pi/2 + 2*pi/5), room_height/2 - r_out*sin(pi/2 + 2*pi/5)],
	[room_width/2 + r_out*cos(pi/2 + 4*pi/5), room_height/2 - r_out*sin(pi/2 + 4*pi/5)],
	[room_width/2 + r_out*cos(pi/2 + 6*pi/5), room_height/2 - r_out*sin(pi/2 + 6*pi/5)],
	[room_width/2 + r_out*cos(pi/2 + 8*pi/5), room_height/2 - r_out*sin(pi/2 + 8*pi/5)]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[0, 2],
	[0, 3],
	[0, 4],
	[0, 5],
	[6, 7],
	[7, 8],
	[8, 9],
	[9, 10],
	[10, 6],
	[1, 10],
	[1, 7],
	[2, 6],
	[2, 8],
	[3, 7],
	[3, 9],
	[4, 8],
	[4, 10],
	[5, 9],
	[5, 6]
];

// Define graph
return scr_create_graph_list(coords, adj);
