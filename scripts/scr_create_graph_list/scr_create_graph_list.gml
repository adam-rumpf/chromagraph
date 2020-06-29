/// @func scr_create_graph_list(coords, adj)
/// @desc Creates a graph object from lists of vertex coordinates and adjacencies and returns its ID.
/// @param {real[]} coords List of coordinate pairs.
/// @param {int[]} adj List of adjacency pairs.
/// @return {obj_graph} Created graph object.

// Rename arguments
var coords, adj;
coords = argument[0];
adj = argument[1];

// Generate vertices at coordinates
var v = [];
for (var i = 0; i < array_length_1d(coords); i++)
{
	var elem = coords[i]; // used to retrieve 1D array element from 1D array of coordinates
	v[i] = instance_create_layer(elem[0], elem[1], "Vertices", obj_vertex);
}

// Generate edges
var e = [];
for (var i = 0; i < array_length_1d(adj); i++)
{
	var elem = adj[i];
	e[i] = scr_create_edge(v[elem[0]], v[elem[1]]);
}

// Define graph
return scr_create_graph(v, e);
