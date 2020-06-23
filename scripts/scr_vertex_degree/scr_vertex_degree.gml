/// @func scr_vertex_degree(v, flag)
/// @desc Calculates the degree of a vertex.
/// @param {obj_vertex} v Vertex object.
/// @param {int} flag Set to 0 to calculate undirected degree, -1 to calculate indegree, and +1 to calculate outdegree.
/// @return {int} Degree of vertex.

// Rename arguments
var v, flag;
v = argument[0];
flag = argument[1];

// Degree totals
var out = array_length_1d(v.out_arcs);
var in = array_length_1d(v.in_arcs);

// Calculate correct total
var total = 0;
if (flag >= 0)
	total += out;
if (flag <= 0)
	total += in;

return total;
