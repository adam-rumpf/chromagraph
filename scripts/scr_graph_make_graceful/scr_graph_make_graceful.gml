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
	// S5
	case rm_graceful_s5:
		g = scr_graph_star(5);
		break;
	
	// P5
	case rm_graceful_p5:
		g = scr_graph_p5();
		break;
	
	// Dragonfly
	case rm_graceful_dragonfly:
		g = scr_graph_dragonfly();
		break;
	
	// Crab (2 spokes)
	case rm_graceful_crab_2:
		g = scr_graph_crab_2();
		break;
	
	// Butterfly
	case rm_graceful_butterfly:
		g = scr_graph_butterfly();
		break;
	
	// 3-Spider
	case rm_graceful_spider3:
		g = scr_graph_spider(3);
		break;
	
	// Caterpillar (3 sets of 2 legs)
	case rm_graceful_caterpillar_3_2:
		g = scr_graph_caterpillar_3_2();
		break;
	
	// Random
	default:
		
		//###
		room_goto(rm_menu);
		return obj_game.id;
		
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
