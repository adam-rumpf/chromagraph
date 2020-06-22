/// @func scr_partitioned_additional_edges(part, vo, eo, m, deg2)
/// @desc Generates additional edges given an existing edge set such that vertices in the same partition are nonadjacent.
/// @param {int[]} part List of lists corresponding to the vertex IDs in each partition.
/// @param {obj_vertex[]} vo List of vertex objects.
/// @param {obj_edge[]} eo List of edge objects.
/// @param {int} m Desired total number of edges.
/// @param {bool} deg2 If true, forces all degrees to be at least 2.

// Rename arguments
var part, vo, eo, m, deg2;
part = argument[0];
vo = argument[1];
eo = argument[2];
m = argument[3];
deg2 = argument[4];

// Initialize counts
var mm = array_length_1d(eo); // current number of edges
var seg = array_height_2d(part); // number of partitions

// Initialize new edge list
var en = []; // new edge object list

// If guaranteeing degrees at least 2, begin by adding an edge to each degree-1 vertex
if (deg2 == true)
{
	// Calculate the degree of each vertex
	var deg = [];
	for (var i = 0; i < array_length_1d(vo); i++)
		deg[i] = scr_vertex_degree(vo[i], 0);
	
	// Add edges until all degrees are at least 2
	while (scr_array_min(deg) < 2)
	{
		// Choose a random vertex of degree 1
		var ui = scr_array_random_occurrence(deg, 1);
		
		
		
		
		
		break;//###
	}
	
	
	
	
	
	//###
}











return en;
