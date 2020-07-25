/// @func scr_graph_make_total(room)
/// @desc Creates the graph associated with a particular room's total coloring puzzle.
/// @param {int} room Room to create a graph for.
/// @return {obj_graph} Graph object for room.

// Rename argument
var rm = argument[0];

// Create graph object depending on room
var g;
switch rm
{
	// Dart
	case rm_total_dart:
		g = scr_graph_dart();
		break;
	
	// Random
	default:
		
		//###
		
		break;
}

// Get numbers of vertices, edges, and selectable objects
var l = array_length_1d(g.e);
var n = array_length_1d(g.v);
var m = array_length_1d(global.selectable);
		
// Add vertices and edges to selectable object list
for (var i = 0; i < n; i++)
	global.selectable[m+i] = g.v[i];
for (var i = 0; i < l; i++)
	global.selectable[m+n+i] = g.e[i];

// Return graph object
return g;
