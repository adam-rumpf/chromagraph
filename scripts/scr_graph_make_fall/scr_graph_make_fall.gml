/// @func scr_graph_make_fall(room)
/// @desc Creates the graph associated with a particular room's fall coloring puzzle.
/// @param {int} room Room to create a graph for.
/// @return {obj_graph} Graph object for room.

// Rename argument
var rm = argument[0];

// Create graph object depending on room
var g;
switch rm
{
	// Cube
	case rm_fall_cube_2:
	case rm_fall_cube_4:
		g = scr_graph_cube();
		break;
	
	// Tablet
	case rm_fall_tablet:
		g = scr_graph_tablet2();
		break;
	
	// C5 [] C5
	case rm_fall_c5_cart_c5:
		g = scr_graph_c5_cart_c5();
		break;
	
	// K3 x House
	case rm_fall_k3xhouse:
		g = scr_graph_k3xhouse();
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
