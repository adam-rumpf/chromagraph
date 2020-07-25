/// @func scr_graph_make_graceful(room)
/// @desc Creates the graph associated with a particular room's decomposition puzzle.
/// @param {int} room Room to create a graph for.
/// @return {obj_graph} Graph object for room.

// Rename argument
var rm = argument[0];

// Create graph object depending on room
var g;
switch rm
{
	// Triangle
	case rm_decomp_triangle:
		g = scr_graph_cycle(3);
		break;
	
	// Bow Tie
	case rm_decomp_bowtie:
		g = scr_graph_bowtie();
		break;
	
	// Triforce
	case rm_decomp_triforce:
		g = scr_graph_triforce();
		break;
	
	// K7
	case rm_decomp_k7:
		g = scr_graph_complete(7);
		break;
	
	// Random
	default:
		
		//###
		
		break;
}

// Get numbers of edges and selectable objects
var n = array_length_1d(g.e);
var m = array_length_1d(global.selectable);
		
// Add edges to selectable object list
for (var i = 0; i < n; i++)
	global.selectable[m+i] = g.e[i];

// Return graph object
return g;
