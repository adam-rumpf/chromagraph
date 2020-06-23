/// @func scr_create_graph(v, e)
/// @desc Creates a graph object and returns its ID.
/// @param {obj_vertex[]} v List of vertex objects.
/// @param {obj_edge[]} e List of edge objects.
/// @returns {obj_graph} Created graph object.

// Rename arguments
var v, e;
v = argument[0];
e = argument[1];

// Define graph and assign vertex and edge sets
var g = instance_create_layer(0, 0, "Graph", obj_graph);
g.v = v;
g.e = e;

// Return graph ID
return g;
