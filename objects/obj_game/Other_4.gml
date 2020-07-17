/// @desc Initialize objects within room.

// Reset color class counts
class = [];

// Reset solve status
global.puzzle_solved = false;

// Main case structure for each room
switch room
{
	// Title screen
	case rm_title:
		//###
		global.puzzle = 0;
		break;
	
	/*============================================================
		Coloring Puzzles (Type 1)
		Selectable: Buttons, Vertices
		Parameters: puzzle_limit (number of color classes)
	============================================================*/
	
	// Coloring (P2)
	case rm_coloring_p2:
		
		global.puzzle = 1;
		
		// Set color limit
		global.puzzle_limit = 2;
	
		// Define path graph
		g = scr_graph_p2();
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g.v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g.v[i];
		
		break;
	
	// Coloring (Dart)
	case rm_coloring_dart:
		
		global.puzzle = 1;
		
		// Set color limit
		global.puzzle_limit = 3;
	
		// Define dart graph
		g = scr_graph_dart();
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g.v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g.v[i];
		
		break;
	
	// Coloring (Kite)
	case rm_coloring_kite:
		
		global.puzzle = 1;
		
		// Set color limit
		global.puzzle_limit = 3;
	
		// Define dart graph
		g = scr_graph_kite();
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g.v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g.v[i];
		
		break;
	
	// Coloring (Petersen)
	case rm_coloring_petersen_star:
		
		global.puzzle = 1;
		
		// Set color limit
		global.puzzle_limit = 3;
	
		// Define Petersen graph
		g = scr_graph_petersen_star();
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g.v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g.v[i];
		
		break;
	
	// Coloring (Petersen)
	case rm_coloring_petersen_claw:
		
		global.puzzle = 1;
		
		// Set color limit
		global.puzzle_limit = 3;
	
		// Define Petersen graph
		g = scr_graph_petersen_claw();
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g.v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g.v[i];
		
		break;
	
	// Coloring (Petersen)
	case rm_coloring_petersen_circle:
		
		global.puzzle = 1;
		
		// Set color limit
		global.puzzle_limit = 3;
	
		// Define Petersen graph
		g = scr_graph_petersen_circle();
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g.v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g.v[i];
		
		break;
	
	// Coloring (Dodecahedron)
	case rm_coloring_dodecahedron:
		
		global.puzzle = 1;
		
		// Set color limit
		global.puzzle_limit = 3;
	
		// Define Petersen graph
		g = scr_graph_dodecahedron();
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g.v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g.v[i];
		
		break;
	
	// Coloring (K2 x K4)
	case rm_coloring_categorical_4:
		
		global.puzzle = 1;
		
		// Set color limit
		global.puzzle_limit = 4;
	
		// Define K2 x K4 graph
		g = scr_graph_categorical_4();
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g.v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g.v[i];
		
		break;
	
	// Coloring (Test Grid)
	case rm_coloring_grid_4x5:
		
		global.puzzle = 1;
		
		// Set color limit
		global.puzzle_limit = 20;
	
		// Define grid graph
		g = scr_graph_grid_4x5();
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g.v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g.v[i];
		
		//###
		// Give all vertices a separate color
		for (var i = 0; i < n; i++)
		{
			g.v[i].label = i;
			g.v[i].image_blend = scr_pallette(i, 0.5);
		}
		
		break;
	
	/*============================================================
		Edge Coloring Puzzles (Type 2)
		1 Graph
		Selectable: Buttons, Edges
		Parameters: puzzle_limit (number of color classes)
	============================================================*/
	
	// Coloring (Petersen Star)
	case rm_edge_petersen_star:
		
		global.puzzle = 2;
		
		// Set color limit
		global.puzzle_limit = 4;
	
		// Define Petersen graph
		g = scr_graph_petersen_star();
		
		// Get numbers of edges and selectable objects
		var n = array_length_1d(g.e);
		var m = array_length_1d(global.selectable);
		
		// Add edges to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g.e[i];
		
		break;
	
	/*============================================================
		Total Coloring Puzzles (Type 3)
		1 Graph
		Selectable: Buttons, Vertices, Edges
		Parameters: puzzle_limit (number of color classes)
	============================================================*/
	
	// Total Coloring (Dart)
	case rm_total_dart:
		
		global.puzzle = 3;
		
		// Set color limit
		global.puzzle_limit = 5;
	
		// Define dart graph
		g = scr_graph_dart();
		
		// Get numbers of vertices, edges, and selectable objects
		var l = array_length_1d(g.e);
		var n = array_length_1d(g.v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices and edges to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g.v[i];
		for (var i = 0; i < l; i++)
			global.selectable[m+n+i] = g.e[i];
		
		break;
	
	/*============================================================
		Graceful Tree Labeling Puzzles (Type 4)
		1 Graph
		Selectable: Buttons, Vertices
		Parameters: none
	============================================================*/
	
	// Graceful Trees (5-Star)
	case rm_graceful_s5:
		
		global.puzzle = 4;
	
		// Define 5-star graph
		g = scr_graph_star(5);
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g.v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g.v[i];
		
		break;
	
	/*============================================================
		Decomposition Puzzles (Type 5)
		1 Graph
		Selectable: Buttons, Edges
		Parameters: puzzle_limit (number of colors/partitions)
	============================================================*/
	
	// Decomposition (Triangle)
	case rm_decomp_triangle:
		
		global.puzzle = 5;
		
		// Set number of partitions
		global.puzzle_limit = 2;
	
		// Define triangle graph
		g = scr_graph_cycle(3);
		
		// Set color class size list
		for (var i = 0; i < global.puzzle_limit; i++)
			class[i] = 0;
		
		// Get numbers of edges and selectable objects
		var n = array_length_1d(g.e);
		var m = array_length_1d(global.selectable);
		
		// Add edges to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g.e[i];
		
		break;
	
	// Decomposition (Bowtie)
	case rm_decomp_bowtie:
		
		global.puzzle = 5;
		
		// Set number of partitions
		global.puzzle_limit = 2;
	
		// Define bowtie graph
		g = scr_graph_bowtie();
		
		// Set color class size list
		for (var i = 0; i < global.puzzle_limit; i++)
			class[i] = 0;
		
		// Get numbers of edges and selectable objects
		var n = array_length_1d(g.e);
		var m = array_length_1d(global.selectable);
		
		// Add edges to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g.e[i];
		
		break;
	
	// Decomposition (Triforce)
	case rm_decomp_triforce:
		
		global.puzzle = 5;
		
		// Set number of partitions
		global.puzzle_limit = 3;
	
		// Define Triforce graph
		g = scr_graph_triforce();
		
		// Set color class size list
		for (var i = 0; i < global.puzzle_limit; i++)
			class[i] = 0;
		
		// Get numbers of edges and selectable objects
		var n = array_length_1d(g.e);
		var m = array_length_1d(global.selectable);
		
		// Add edges to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g.e[i];
		
		break;
	
	// Decomposition (K7)
	case rm_decomp_k7:
		
		global.puzzle = 5;
		
		// Set number of partitions
		global.puzzle_limit = 7;
	
		// Define Triforce graph
		g = scr_graph_complete(7);
		
		// Set color class size list
		for (var i = 0; i < global.puzzle_limit; i++)
			class[i] = 0;
		
		// Get numbers of edges and selectable objects
		var n = array_length_1d(g.e);
		var m = array_length_1d(global.selectable);
		
		// Add edges to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g.e[i];
		
		break;
	
	/*============================================================
		Dominating Set Puzzles (Type 6)
		1 Graph
		Selectable: Buttons, Vertices
		Parameters: puzzle_limit (number of selectable vertices)
	============================================================*/
	
	// Dominating Set (3-Spider)
	case rm_dominating_spider3:
	
		global.puzzle = 6;
		
		// Set vertex limit
		global.puzzle_limit = 3;
	
		// Define spider graph
		g = scr_graph_spider(3);
		
		// Set current set size
		class[0] = 0;
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g.v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g.v[i];
		
		break;
	
	/*============================================================
		Fall Colring Puzzles (Type 7)
		1 Graph
		Selectable: Buttons, Vertices
		Parameters: puzzle_limit (number of color classes)
	============================================================*/
	
	// Fall Coloring (K2 x K4, 2 colors)
	case rm_fall_categorical_4_2:
	
		global.puzzle = 7;
		
		// Set color limit
		global.puzzle_limit = 2;
	
		// Define K2 x K4 graph
		g = scr_graph_categorical_4();
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g.v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g.v[i];
		
		break;
	
	// Fall Coloring (K2 x K4, 4 colors)
	case rm_fall_categorical_4_4:
	
		global.puzzle = 7
		
		// Set color limit
		global.puzzle_limit = 4;
	
		// Define K2 x K4 graph
		g = scr_graph_categorical_4();
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g.v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g.v[i];
		
		break;
	
	/*============================================================
		Equitable Coloring Puzzles (Type 8)
		1 Graph
		Selectable: Buttons, Vertices
		Parameters: puzzle_limit (number of color classes)
	============================================================*/
	
	// Equitable Coloring (C6)
	case rm_equitable_c6:
		
		global.puzzle = 8;
		
		// Set color limit
		global.puzzle_limit = 3;
	
		// Define cycle graph
		g = scr_graph_cycle(6);
		
		// Set color class size list
		for (var i = 0; i < global.puzzle_limit; i++)
			class[i] = 0;
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g.v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g.v[i];
		
		break;

}

// Reposition vertices
if (g != id)
	scr_vertex_reframe(g, 180, 180, 100, 100);
