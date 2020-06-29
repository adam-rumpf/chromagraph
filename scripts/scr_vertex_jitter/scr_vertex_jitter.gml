/// @func scr_vertex_jitter(g, r)
/// @desc Slightly jitters the positions of all vertices in a graph.
/// @param {obj_graph} g Graph to move.
/// @param {real} r Jitter radius (pixels).

// Rename arguments
var g, r;
g = argument[0];
r = argument[1];

// Process each vertex
for (var i = 0; i < array_length_1d(g.v); i++)
{
	// Set random offset
	var rr, theta;
	theta = random_range(0, 2*pi);
	rr = random_range(0, r);
	
	// Alter vertex coordinates
	g.v[i].x += rr*cos(theta);
	g.v[i].y += rr*sin(theta);
}
