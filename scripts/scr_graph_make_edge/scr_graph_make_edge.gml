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
	
	// Cube
	case rm_edge_cube:
		g = scr_graph_cube();
		break;
	
	// K3,3 (Hexagon)
	case rm_edge_k33:
		g = scr_graph_k_3_3_hexagon();
		break;
	
	// 26-Fullerene
	case rm_edge_fullerene26:
		g = scr_graph_fullerene26();
		break;
	
	// Chord
	case rm_edge_chord:
		g = scr_graph_chord();
		break;
	
	// Hypercube
	case rm_edge_hypercube:
		g = scr_graph_hypercube();
		break;
	
	// K4
	case rm_edge_k4:
		g = scr_graph_wheel(3);
		break;
	
	// Octahedron
	case rm_edge_octahedron:
		g = scr_graph_octahedron();
		break;
	
	// Dragonfly Tree
	case rm_edge_dragonfly:
		g = scr_graph_dragonfly_long();
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
