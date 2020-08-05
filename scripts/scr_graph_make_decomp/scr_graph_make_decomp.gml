/// @func scr_graph_make_decomp(room)
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
	
	// Bowtie
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
	
	// K3,3 in a Box
	case rm_decomp_k33_box:
		g = scr_graph_k33_box();
		break;
	
	// K8 Subset
	case rm_decomp_k8_subset:
		g = scr_graph_k8_subset_deformed();
		break;
	
	// Bowtie [] Triangle
	case rm_decomp_bowtie_cart_triangle:
		g = scr_graph_bowtie_cart_triangle();
		break;
	
	// Triangle Capsule
	case rm_decomp_triangle_capsule:
		g = scr_graph_triangle_capsule();
		break;
	
	// Double Pentagon
	case rm_decomp_double_pentagon:
		g = scr_graph_double_pentagon();
		break;
	
	// Random
	default:
		
		//###
		room_goto(rm_menu);
		return obj_game.id;
		
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
