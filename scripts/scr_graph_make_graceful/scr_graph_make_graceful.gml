/// @func scr_graph_make_graceful(room)
/// @desc Creates the graph associated with a particular room's graceful tree puzzle.
/// @param {int} room Room to create a graph for.
/// @return {obj_graph} Graph object for room.

// Rename argument
var rm = argument[0];

// Create graph object depending on room
var g;
switch rm
{
	// 5-Star
	case rm_graceful_s5:
		g = scr_graph_star(5);
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
