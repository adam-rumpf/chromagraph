/// @func scr_graph_triangle_capsule()
/// @desc Generates a capsule-shaped graph made of triangles.
/// @return {obj_graph} Graph object.

// Define vertex positions
var coords =
[
	[room_width/2, room_height/2],
	[room_width/2 - room_height/3, room_height/2 - room_height/3],
	[room_width/2 + room_height/3, room_height/2 - room_height/3],
	[room_width/2 + room_height/3, room_height/2 + room_height/3],
	[room_width/2 - room_height/3, room_height/2 + room_height/3],
	[room_width/2 - 2*room_height/3, room_height/2],
	[room_width/2 + 2*room_height/3, room_height/2]
];

// Define pairs of adjacent vertices
var adj =
[
	[0, 1],
	[0, 2],
	[0, 3],
	[0, 4],
	[1, 2],
	[2, 3],
	[3, 4],
	[4, 1],
	[5, 1],
	[5, 4],
	[6, 2],
	[6, 3]
];

// Define graph
return scr_create_graph_list(coords, adj);
