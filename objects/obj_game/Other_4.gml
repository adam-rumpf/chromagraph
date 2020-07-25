/// @desc Initialize objects within room.

// Reset color class counts
class = [];

// Reset solve status
global.puzzle_solved = false;
solved = false;

// Set global puzzle type
global.puzzle = scr_puzzle_type(room);

// Set global puzzle limit
global.puzzle_limit = scr_puzzle_limit(room);

// Main case structure depending on puzzle type
switch global.puzzle
{
	// Coloring Puzzle
	case 1:
		g = scr_graph_make_coloring(room);
		break;
	
	// Edge Coloring Puzzle
	case 2:
		g = scr_graph_make_edge(room);
		break;
	
	// Total Coloring Puzzle
	case 3:
		g = scr_graph_make_total(room);
		break;
	
	// Graceful Tree Puzzle
	case 4:
		g = scr_graph_make_graceful(room);
		break;
	
	// Decomposition Puzzle
	case 5:
		
		g = scr_graph_make_decomp(room);
		
		// Set color class size list
		for (var i = 0; i < global.puzzle_limit; i++)
			class[i] = 0;
		
		break;
	
	// Dominating Set Puzzle
	case 6:
		
		g = scr_graph_make_dominating(room);
		
		// Set current set size
		class[0] = 0;
		
		break;
	
	// Fall Coloring Puzzle
	case 7:
		g = scr_graph_make_fall(room);
		break;
	
	// Equitable Coloring Puzzle
	case 8:
		
		g = scr_graph_make_equitable(room);
		
		// Set color class size list
		for (var i = 0; i < global.puzzle_limit; i++)
			class[i] = 0;
		
		break;
}

// Reposition vertices
if (g != id)
	scr_vertex_reframe(g, 180, 180, 100, 100);
