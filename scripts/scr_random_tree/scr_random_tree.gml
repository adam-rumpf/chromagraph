/// @func scr_random_tree(n)
/// @desc Generates a random tree graph.
/// @param {int} n Number of vertices.
/// @return {obj_graph} Graph object corresponding to created tree.

// Rename argument
var n = argument[0];

// Generate a vertex list
var vo = []; // vertex objects
var vi = []; // vertex indices
var vu = []; // unprocessed vertex IDs (for use in edge generation)
var vp = []; // processed vertex IDs (for use in edge generation)
for (var i = 0; i < n; i++)
{
	// Label vertices 0, 1, ..., n-1
	vi[i] = i;
	
	// Initialize processed/unprocessed lists
	vu[i] = i;
	vp[i] = -1; // -1 indicates unprocessed
	
	// Initialize vertices in a circle
	var xx, yy;
	xx = (room_width/2) + (room_width/4)*cos((2*pi*i)/n);
	yy = (room_height/2) + (room_height/4)*sin((2*pi*i)/n);
	vo[i] = instance_create_layer(xx, yy, "Vertices", obj_vertex);
	vo[i].index = i;
}

// Mark first vertex as processed
vu[0] = -1;
vp[0] = 0;

// Initialize edge list
var eo = []; // edge object list
var m = 0; // number of edges

// Iteratively add edges between unprocessed vertices and processed vertices
while (scr_count_nonnegative_1d(vu) > 0)
{
	// Choose a random unprocessed vertex
	var ii = scr_choose_nonnegative_1d(vu);
	var u = vo[ii];
	
	// Create a list of valid choices to connect to
	var set = [];
	var choices = 0;
	for (var i = 0; i < array_length_1d(vp); i++)
	{
		// Add choice to list
		if (vp[i] >= 0)
		{
			set[choices] = vp[i];
			choices++;
		}
	}
	
	// Choose a random processed vertex
	var jj = set[scr_choose_nonnegative_1d(set)];
	var v = vo[jj];
	
	// Create an edge between the vertices
	eo[m] = scr_create_edge(u, v);
	m++;
	
	//show_message("Vu = " + string(vu) + "\nVp = " + string(vp) + "\nCh = " + string(set) + "\ne = ("+string(ii)+","+string(jj)+")");
	
	// Mark vertex as processed
	vu[ii] = -1;
	vp[ii] = ii;
}

return scr_create_graph(vo, eo);
