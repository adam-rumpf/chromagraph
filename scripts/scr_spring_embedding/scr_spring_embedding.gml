/// @func scr_spring_embedding(g, iter, rand, ref, mdist)
/// @desc Applies a spring force-driven graph drawing algorithm to a graph.
/// @param {obj_graph} g Graph to redraw.
/// @param {int} iter Number of iterations of the force-driven algorithm.
/// @param {bool} rand If true, begins by randomizing vertex positions.
/// @param {bool} ref If true, ends by reframing graph.
/// @param {int} mdist Minimum required distance between vertices (embedding retried if not achieved)

// Rename arguments
var g, iter, rand, ref, mdist;
g = argument[0];
iter = argument[1];
rand = argument[2];
ref = argument[3];
mdist = argument[4];

// Define force parameters
var fe, fv, fc, fb, fm, el, fmax;
fe = 0.5; // edge spring force multiplier
fv = 10000; // vertex electrical force multiplier
fc = 10000; // edge electrical force multiplier
fb = 0; // border force multiplier
fm = 10; // overall force multiplier
el = 100; // target edge length
fmax = 200; // maximum allowed force from any single source

// Random start (if specified)
if (rand == true)
	scr_vertex_random_scatter(g);

// Apply the spring force algorithm repeatedly
var spaced = false; // whether vertices have been spaced out far enough
var tries = 0; // number of attempts at an embedding
var maxtries = 20; // maximum allowed number of tries at an embedding
while (spaced == false && tries < maxtries)
{
	tries++;
	
	// Apply iterative algorithm
	repeat (iter)
		scr_spring_iteration(g, fe, fv, fc, fb, fm, el, fmax);
	
	// Test whether all pairwise distances are large enough
	spaced = true;
	for (var i = 0; i < array_length_1d(g.v); i++)
	{
		var v = g.v[i];
		for (var j = 0; j < i; j++)
		{
			var u = g.v[j];
			if (scr_vector_distance([v.x, v.y], [u.x, u.y]) < mdist)
				spaced = false;
		}
	}
}

// Rebase the final graph
scr_vertex_rebase(g);

// Reframe (if specified)
if (ref == true)
	scr_vertex_reframe(g, 180, 180, 100, 100);
