/// @func scr_graph_make_edge(room)
/// @desc Creates the graph associated with a particular room's edge coloring puzzle.
/// @param {int} room Room to create a graph for.
/// @return {obj_graph} Graph object for room.

// Rename argument
var rm = argument[0];

// Create graph object depending on room
var g;
switch rm
{
	// Petersen (Star)
	case rm_edge_petersen_star:
		g = scr_graph_petersen_star();
		break;
	
	// Grotzsch (Pentagon)
	case rm_edge_grotzsch_pentagon:
		g = scr_graph_grotzsch_pentagon();
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
