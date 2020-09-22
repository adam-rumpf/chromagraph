/// @func scr_random_coloring_puzzle_driver(n, m, c, eps, deg2)
/// @desc Drives the process for generating a random coloring puzzle, including the embedding and filtering.
/// @param {int} n Number of vertices.
/// @param {int} m Number of edges.
/// @param {int} c Number of color classes.
/// @param {real} eps Color class unevenness parameter.
/// @param {bool} deg2 If true, forces all degrees to be at least 2.
/// @return {obj_graph} Graph object corresponding to created puzzle.

// Rename arguments
var n, m, c, eps, deg2;
n = argument[0];
m = argument[1];
c = argument[2];
eps = argument[3];
deg2 = argument[4];

// Graph object
var g;

// Set parameters
var emax, gmax, smax;
emax = 10; // number of times to try embedding a given graph with a random restart before generating a different graph
gmax = 10; // number of times to try generating a graph before defaulting to a preset graph
smax = 10; // number of times to try solving the puzzle with a greedy coloring





//###
/*
To redo:
-Move the entire generation process to this script, and just take the output graph in scr_graph_make_coloring().
-Make a sub-script that handles the entire graph generation process (graph only, minus embedding), and have this drive the embedding and redos.
-Be sure to delete any graphs that we discard.
-Handle the embedding within this script.
-Only try 100 iterations of embedding, and then test whether any vertices are too close and whether any edges are being overlapped,
 and if so completely restart the entire process.
-If we've had to restart too many times in a row, we default to one of a handful of preset graphs (find candidates in Mathematica),
 which will just have slightly jostled vertices (plus rotation and reflection) instead of completely randomized. Store the backup graphs in
 a global array so that we know their chromatic numbers (or just have their scripts overwrite the global puzzle limit, themselves).
-Use a greedy coloring algorithm a few times to find candidate chromatic numbers, and if we get something lower than the puzzle limit,
 lower the puzzle limit (completely restart if it's down to 2). Note that this is only needed for a few puzzle types (the three coloring puzzles,
 plus possibly a different greedy algorithm for dominating set [itratively take the vertex that covers the most uncovered vertices]).

For the verex distances, rescale and then check all pairwise distances. A good lower threshold might be 80 or so.

To check whether any edge is covered by a vertex we might be able to make use of the edge-distance-to-cursor code, but check distance from each non-incidend vertex.
Alternatively just test the vertex's distance to several intermediate points along the edge and take the minimum as the distance.
*/




// Attempt to generate random graphs until finding an acceptable embedding
var valid, ei, gi;
valid = false; // whether the current graph is acceptable
ei = 0; // number of embedding attempts made
gi = 0; // number of graph generation attempts made
while ((valid == false) && (gi < gmax))
{
	// Increment graph attempts and reset embedding attempts
	gi++;
	ei = 0;
	
	// Generate a random graph (without embedding)
	g = scr_random_coloring_puzzle(n, m, c, eps, deg2);
	
	// Graph embedding loop
	while ((valid == false) && (ei < emax))
	{
		ei++;
		
		// Embed graph from a random restart
		scr_spring_embedding(g, 100, true, true, true, 80);
		
		// Test whether embedding is valid
		valid = scr_valid_embedding(g, 80, 80);//###
	}
	
	// If the embedding is still not valid, restart
	if (valid == false)
		continue;
	
	// Greedy coloring loop
	repeat (smax)
	{
		// Attempt to greedily color the graph
		var gc = scr_greedy_coloring(g);
		
		// If it's 2-colorable, break and generate a new graph
		if (gc <= 2)
		{
			valid = false;
			break;
		}
		
		// Otherwise reduce the puzzle limit if needed
		if (gc < global.puzzle_limit)
			global.puzzle_limit = gc;
	}
	
	//###
	break;
}

// If no valid embedding was found, default to a preset graph
if (valid == false)
{
	// Randomly choose a preset graph
	//###
	
	// Slightly alter the preset graph
	//### rotate, reflect, jostle, and rescale
}








return g;
