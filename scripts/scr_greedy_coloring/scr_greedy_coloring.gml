/// @func scr_greedy_coloring(g)
/// @desc Greedily colors a graph and returns the number of colors used. The graph's vertex labels are left unchanged. Output may vary between calls due to random ordering.
/// @param {obj_graph} g Graph to color.
/// @return {int} Number of colors used.

// Rename argument
var g = argument[0];

// Initialize vertex lists
var vc = []; // vertex colors
var vu = ds_priority_create(); // priority queue of unprocessed vertices
for (var i = 0; i < array_length_1d(g.v); i++)
{
	vc[i] = -1; // all colors initially undefined
	ds_priority_add(vu, i, random_range(0, 1000)); // randomize priorities to achieve random order
}

// Color each vertex
while (ds_priority_empty(vu) == false)
{
	// Get next vertex in queue
	var i = ds_priority_find_max(vu);
	ds_priority_delete_max(vu);
	
	// Gather a list of all colors used by neighbors
	var cl = [];
	
	// Check all out-neighbors
	for (var j = 0; j < array_length_1d(g.v[i].out_arcs); j++)
	{
		// Get neighbor's color
		var ncol = vc[g.v[i].out_arcs[j].head.index];
		
		// Skip if unlabeled
		if (ncol < 0)
			continue;
		
		// Otherwise add to list if not already present
		if (scr_find_array(cl, ncol) < 0)
			cl[array_length_1d(cl)] = ncol;
	}
	
	// Check for conflicts with in-neighbors
	for (var j = 0; j < array_length_1d(g.v[i].in_arcs); j++)
	{
		// Get neighbor's color
		var ncol = vc[g.v[i].in_arcs[j].tail.index];
		
		// Skip if unlabeled
		if (ncol < 0)
			continue;
		
		// Otherwise add to list if not already present
		if (scr_find_array(cl, ncol) < 0)
			cl[array_length_1d(cl)] = ncol;
	}
	
	// Find smallest color that avoids conflict
	var col = 0;
	while (scr_find_array(cl, col) >= 0)
		col++;
	
	// Assign color to vertex
	vc[i] = col;
}

// Delete priority queue
ds_priority_destroy(vu);

// Return number of labels used
return scr_array_max(vc) + 1;
