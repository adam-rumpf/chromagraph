/// @func scr_partitioned_spanning_tree(part, vo)
/// @desc Generates a list of edges for a spanning tree such that vertices in the same partition are nonadjacent.
/// @param {int[]} part List of lists corresponding to the vertex IDs in each partition.
/// @param {obj_vertex[]} vo List of vertex objects.

// Rename arguments
var part, vo;
part = argument[0];
vo = argument[1];

// Initialize objects
var eo; // edge object list
var seg = array_height_2d(part); // number of partitions
var partu; // unprocessed vertex IDs (partitioned)
var partp; // processed vertex IDs (partitioned)

// Initialize processed and unprocessed vertex lists
var partu; // unprocessed vertex IDs (partitioned; -1 as a placeholder for unprocessed IDs)
var partp; // processed vertex IDs (partitioned)
var total = 0; // number of vertices in need of processing
for (var i = 0; i < seg; i++)
{
	// Copy vertex IDs to unprocessed list and fill processed list with placeholders
	for (var j = 0; j < array_length_2d(part, i); j++)
	{
		partu[i,j] = part[i,j];
		partp[i,j] = -1;
		total++;
	}
}

// Choose an initial vertex to process
var ii = scr_choose_nonnegative_partition(partu);
var ui = scr_choose_nonnegative_2d(partu, ii);
var u = partu[ii,ui];

// Move the vertex from unprocessed to processed
partu[ii,ui] = -1;
partp[ii,ui] = u;
total--;

// Choose vertices and add edges as long as there remain unprocessed vertices
while (total > 0)
{
	// Choose an unprocessed vertex
	var ii = scr_choose_nonnegative_partition(partu);
	var ui = scr_choose_nonnegative_2d(partu, ii);
	var u = partu[ii,ui];
	
	// Make a list of all partitions containing at least one unprocessed element
	var rows = [];
	var choices = 0; // number of valid choices
	for (var i = 0; i < seg; i++)
	{
		// Skip own partition
		if (i == ii)
			continue;
		
		// Count as a valid choice if there is at least one nonzero index
		if (scr_count_nonnegative_2d(partu, i) > 0)
		{
			rows[choices] = i;
			choices++;
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	break;//###
}
















return partu;//###
