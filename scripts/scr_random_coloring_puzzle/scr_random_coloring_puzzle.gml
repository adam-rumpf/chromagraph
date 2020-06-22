/// @func scr_random_coloring_puzzle(n, m, c, eps, deg2)
/// @desc Generates a graph for a random coloring puzzle.
/// @param {int} n Number of vertices.
/// @param {int} m Number of edges.
/// @param {int} c Number of color classes.
/// @param {real} eps Color class unevenness parameter.
/// @param {bool} deg2 If true, forces all degrees to be at least 2.

// Rename arguments
var n, m, c, eps, deg2;
n = argument[0];
m = argument[1];
c = argument[2];
eps = argument[3];
deg2 = argument[4];

// Generate a vertex list
var vo = []; // vertex objects
var vi = []; // vertex indices
for (var i = 0; i < n; i++)
{
	// Label vertices 0, 1, ..., n-1
	vi[i] = i;
	
	// Initialize vertices in a circle
	var xx, yy;
	xx = (room_width/2) + (room_width/4)*cos((2*pi*i)/n);
	yy = (room_height/2) + (room_height/4)*sin((2*pi*i)/n);
	vo[i] = instance_create_layer(xx, yy, "Graph", obj_vertex);
}

// Generate color class partition
var part = scr_partition_sequence(vi, c, eps);

// Initialize edge object list as a spanning tree to ensure connectivity
var eo = scr_partitioned_spanning_tree(part, vo);












//###
// Initialize correct vertex labels for testing.
for (var i = 0; i < array_height_2d(part); i++)
{
	for (var j = 0; j < array_length_2d(part, i); j++)
		vo[part[i,j]].label = i;
}
