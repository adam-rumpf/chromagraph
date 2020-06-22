/// @func scr_partitioned_spanning_tree(part, vo)
/// @desc Generates a list of edges for a spanning tree such that vertices in the same partition are nonadjacent.
/// @param {int[]} part List of lists corresponding to the vertex IDs in each partition.
/// @param {obj_vertex[]} vo List of vertex objects.

// Rename arguments
var part, vo;
part = argument[0];
vo = argument[1];

// Initialize objects
var eo = []; // edge object list
var m = 0; // length of edge list
var seg = array_height_2d(part); // number of partitions

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

// Move the vertex from unprocessed to processed
partp[ii,ui] = partu[ii,ui];
partu[ii,ui] = -1;
total--;

// Add edges between processed and unprocessed vertices until all vertices are processed
while (total > 0)
{
	// Choose an unprocessed vertex
	var ii = scr_choose_nonnegative_partition(partu);
	var ui = scr_choose_nonnegative_2d(partu, ii);
	var u = vo[partu[ii,ui]];
	
	// Make a list of all partitions containing at least one processed element
	var rows = [];
	var choices = 0; // number of valid choices
	for (var i = 0; i < seg; i++)
	{
		// Skip own partition
		if (i == ii)
			continue;
		
		// Count as a valid choice if there is at least one nonzero index
		if (scr_count_nonnegative_2d(partp, i) > 0)
		{
			rows[choices] = i;
			choices++;
		}
	}
	
	// If no other partition is valid, restart
	if (choices < 1)
		continue;
	
	// Otherwise, pick another partition and a processed vertex from that partition
	var jj = rows[irandom(choices-1)];
	var vi = scr_choose_nonnegative_2d(partp, jj);
	var v = vo[partp[jj,vi]];
	
	// Define an edge between the vertices
	eo[m] = instance_create_layer(mean(u.x,v.x), mean(u.y,v.y), "Graph", obj_edge);
	eo[m].tail = u;
	eo[m].head = v;
	m++;
	
	// Mark the new vertex as processed
	partp[ii,ui] = partu[ii,ui];
	partu[ii,ui] = -1;
	total--;
}
















return vo;//###
