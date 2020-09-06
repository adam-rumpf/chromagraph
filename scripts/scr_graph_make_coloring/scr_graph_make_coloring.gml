/// @func scr_graph_make_coloring(room)
/// @desc Creates the graph associated with a particular room's coloring puzzle.
/// @param {int} room Room to create a graph for.
/// @return {obj_graph} Graph object for room.

// Rename argument
var rm = argument[0];

// Create graph object depending on room
var g;
switch rm
{
	// Menu Puzzle
	case rm_menu_puzzle:
		g = scr_menu_graph();
		break;
	
	// Triangle
	case rm_coloring_triangle_new:
	case rm_coloring_triangle:
	case rm_save_clear:
		g = scr_graph_cycle(3);
		break;
	
	// Snowflake
	case rm_coloring_snowflake_3_2:
		g = scr_graph_snowflake_3_2();
		break;
	
	// Dart
	case rm_coloring_dart:
		g = scr_graph_dart();
		break;
	
	// Petersen (Star)
	case rm_coloring_petersen_star:
		g = scr_graph_petersen_star();
		break;
	
	// Dodecahedron
	case rm_coloring_dodecahedron:
		g = scr_graph_dodecahedron();
		break;
	
	// Grotzsch (Pentagon)
	case rm_coloring_grotzsch_pentagon:
		g = scr_graph_grotzsch_pentagon();
		break;
	
	// Necklace (3 Pendants)
	case rm_coloring_necklace_3:
		g = scr_graph_necklace_3();
		break;
	
	// W5
	case rm_coloring_w5:
		g = scr_graph_wheel(5);
		break;
	
	// Cube
	case rm_coloring_cube:
		g = scr_graph_cube();
		break;
	
	// Hypercube
	case rm_coloring_hypercube:
		g = scr_graph_hypercube();
		break;
	
	// K3 [] P4
	case rm_coloring_k3_cart_p4:
		g = scr_graph_k3_cart_p4();
		break;
	
	// Tablet
	case rm_coloring_tablet:
		g = scr_graph_tablet();
		break;
	
	// 26-Fullerene
	case rm_coloring_fullerene26:
		g = scr_graph_fullerene26();
		break;
	
	// Clebsch Graph
	case rm_coloring_clebsch:
		g = scr_graph_clebsch_star();
		break;
	
	// Random
	default:
		
		// Randomly choose a color limit
		global.puzzle_limit = irandom_range(3, 5);
		
		// Create random graph
		var n = irandom_range(5+global.puzzle_limit, 10+global.puzzle_limit);
		var m = irandom_range(n, floor(2.5*n));
		g = scr_random_coloring_puzzle(n, m, global.puzzle_limit, 2, true);
		
		// Embed graph
		scr_spring_embedding(g, 100, true, true, true, 100);
		
		break;
}

// Get numbers of vertices and selectable objects
var n = array_length_1d(g.v);
var m = array_length_1d(global.selectable);
		
// Add vertices to global selectable object list
for (var i = 0; i < n; i++)
	global.selectable[m+i] = g.v[i];

// Return graph object
return g;
