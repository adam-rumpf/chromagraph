/// @func scr_graph_make_equitable(room)
/// @desc Creates the graph associated with a particular room's equitable coloring puzzle.
/// @param {int} room Room to create a graph for.
/// @return {obj_graph} Graph object for room.

// Rename argument
var rm = argument[0];

// Create graph object depending on room
var g;
switch rm
{
	// C6
	case rm_equitable_c6:
		g = scr_graph_cycle(6);
		break;
	
	// Hypercube (4 colors)
	case rm_equitable_hypercube_4:
		g = scr_graph_hypercube();
		break;
	
	// Dodecahedron
	case rm_equitable_dodecahedron:
		g = scr_graph_dodecahedron();
		break;
	
	// Cube (4 colors)
	case rm_equitable_cube_4:
		g = scr_graph_cube();
		break;
	
	// Crab
	case rm_equitable_crab:
		g = scr_graph_crab_2();
		break;
	
	// Snowflake
	case rm_equitable_snowflake_5_3:
		g = scr_graph_snowflake_5_3();
		break;
	
	// Flower (6 petals)
	case rm_equitable_flower_6_4:
		g = scr_graph_flower_6();
		break;
	
	// Clebsch
	case rm_equitable_clebsch:
		g = scr_graph_clebsch_star();
		break;
	
	// 5-Cube Sun
	case rm_equitable_5cube_sun:
		g = scr_graph_5cube_sun();
		break;
	
	// Random
	default:
		
		// Randomly choose a color limit
		global.puzzle_limit = irandom_range(3, 5);
		
		// Create random graph
		var n = global.puzzle_limit*irandom_range(3, 5);
		var m = irandom_range(n, floor(2.5*n));
		g = scr_random_coloring_puzzle(n, m, global.puzzle_limit, 0, true);
		
		// Embed graph
		scr_spring_embedding(g, 100, true, true, true, 100);
		
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
