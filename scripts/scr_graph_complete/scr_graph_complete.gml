/// @func scr_graph_complete(k)
/// @desc Generates the complete graph on k vertices.
/// @param {int} k Number of vertices.
/// @return {obj_graph} Graph object.

// Rename argument
var k = argument[0];

// Define vertex positions
var r = room_height/4;
var coords = [];
for (var i = 0; i < k; i++)
	coords[i] = [room_width/2 + r*cos(pi/2 + 2*pi*i/k), room_height/2 - r*sin(pi/2 + 2*pi*i/k)];

// Define pairs of adjacent vertices
var adj = [];
for (var i = 0; i < k; i++)
{
	for (var j = 0; j < i; j++)
		adj[array_length_1d(adj)] = [i, j];
}

// Define graph
return scr_create_graph_list(coords, adj);
