/// @func scr_graph_make_dominating(room)
/// @desc Creates the graph associated with a particular room's dominating set puzzle.
/// @param {int} room Room to create a graph for.
/// @return {obj_graph} Graph object for room.

// Rename argument
var rm = argument[0];

// Create graph object depending on room
var g;
switch rm
{
	// 3-Spider
	case rm_dominating_spider3:
		g = scr_graph_spider(3);
		break;
	
	// P5
	case rm_dominating_p5:
		g = scr_graph_p5();
		break;
	
	// P5
	case rm_dominating_double_hexagon:
		g = scr_graph_double_hexagon();
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
