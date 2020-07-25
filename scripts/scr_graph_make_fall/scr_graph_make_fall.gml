/// @func scr_graph_make_dominating(room)
/// @desc Creates the graph associated with a particular room's fall coloring puzzle.
/// @param {int} room Room to create a graph for.
/// @return {obj_graph} Graph object for room.

// Rename argument
var rm = argument[0];

// Create graph object depending on room
var g;
switch rm
{
	// K2 x K4 (2 colors)
	case rm_fall_categorical_4_2:
		g = scr_graph_categorical_4();
		break;
	
	// K2 x K4 (4 colors)
	case rm_fall_categorical_4_4:
		g = scr_graph_categorical_4();
		break;
	
	// Random
	default:
		
		//###
		
		break;
}

// Get numbers of vertices and selectable objects
var n = array_length_1d(g.v);
var m = array_length_1d(global.selectable);
		
// Add vertices to selectable object list
for (var i = 0; i < n; i++)
	global.selectable[m+i] = g.v[i];

// Return graph object
return g;
