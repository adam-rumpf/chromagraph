/// @desc Initialize objects within room.

// Reset color class counts
class = [];

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
		1 Graph
		Selectable: Buttons, Vertices
		Parameters: puzzle_limit (number of available colors)
	============================================================*/
	
	// Coloring (P2)
	case rm_coloring_p2:
		
		global.puzzle = 1;
	
		// Define path graph
		g[0] = scr_graph_p2();
		
		// Set color limit
		global.puzzle_limit = 2;
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g[0].v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g[0].v[i];
		
		break;
	
	// Coloring (Dart)
	case rm_coloring_dart:
		
		global.puzzle = 1;
	
		// Define dart graph
		g[0] = scr_graph_dart();
		
		// Set color limit
		global.puzzle_limit = 3;
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g[0].v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g[0].v[i];
		
		break;
	
	// Coloring (Kite)
	case rm_coloring_kite:
		
		global.puzzle = 1;
	
		// Define dart graph
		g[0] = scr_graph_kite();
		
		// Set color limit
		global.puzzle_limit = 3;
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g[0].v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g[0].v[i];
		
		break;
	
	// Coloring (Petersen)
	case rm_coloring_petersen_star:
		
		global.puzzle = 1;
	
		// Define Petersen graph
		g[0] = scr_graph_petersen_star();
		
		// Set color limit
		global.puzzle_limit = 3;
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g[0].v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g[0].v[i];
		
		break;
	
	// Coloring (Petersen)
	case rm_coloring_petersen_claw:
		
		global.puzzle = 1;
	
		// Define Petersen graph
		g[0] = scr_graph_petersen_claw();
		
		// Set color limit
		global.puzzle_limit = 3;
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g[0].v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g[0].v[i];
		
		break;
	
	// Coloring (Petersen)
	case rm_coloring_petersen_circle:
		
		global.puzzle = 1;
	
		// Define Petersen graph
		g[0] = scr_graph_petersen_circle();
		
		// Set color limit
		global.puzzle_limit = 3;
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g[0].v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g[0].v[i];
		
		break;
	
	// Coloring (Dodecahedron)
	case rm_coloring_dodecahedron:
		
		global.puzzle = 1;
	
		// Define Petersen graph
		g[0] = scr_graph_dodecahedron();
		
		// Set color limit
		global.puzzle_limit = 3;
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g[0].v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g[0].v[i];
		
		break;
	
	// Coloring (K2 x K4)
	case rm_coloring_categorical_4:
		
		global.puzzle = 1;
	
		// Define Petersen graph
		g[0] = scr_graph_categorical_4();
		
		// Set color limit
		global.puzzle_limit = 4;
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g[0].v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g[0].v[i];
		
		break;
	
	// Coloring (Test Grid)
	case rm_coloring_grid_4x5:
		
		global.puzzle = 1;
	
		// Define grid graph
		g[0] = scr_graph_grid_4x5();
		
		// Set color limit
		global.puzzle_limit = 20;
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g[0].v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g[0].v[i];
		
		//###
		// Give all vertices a separate color
		for (var i = 0; i < n; i++)
		{
			g[0].v[i].label = i;
			g[0].v[i].image_blend = scr_pallette(i, 0.5);
		}
		
		break;
	
	/*============================================================
		Edge Coloring Puzzles (Type 2)
		1 Graph
		Selectable: Buttons, Edges
		Parameters: puzzle_limit (number of available colors)
	============================================================*/
	
	// Coloring (Petersen Star)
	case rm_edge_coloring_petersen_star:
		
		global.puzzle = 2;
	
		// Define Petersen graph
		g[0] = scr_graph_petersen_star();
		
		// Set color limit
		global.puzzle_limit = 4;
		
		// Get numbers of edges and selectable objects
		var n = array_length_1d(g[0].e);
		var m = array_length_1d(global.selectable);
		
		// Add edges to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g[0].e[i];
		
		break;
	
	/*============================================================
		Total Coloring Puzzles (Type 3)
		1 Graph
		Selectable: Buttons, Vertices, Edges
		Parameters: puzzle_limit (number of available colors)
	============================================================*/
	
	// Total Coloring (Dart)
	case rm_total_coloring_dart:
		
		global.puzzle = 3;
	
		// Define dart graph
		g[0] = scr_graph_dart();
		
		// Set color limit
		global.puzzle_limit = 5;
		
		// Get numbers of vertices, edges, and selectable objects
		var l = array_length_1d(g[0].e);
		var n = array_length_1d(g[0].v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices and edges to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g[0].v[i];
		for (var i = 0; i < l; i++)
			global.selectable[m+n+i] = g[0].e[i];
		
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
		g[0] = scr_graph_star(5);
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g[0].v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g[0].v[i];
		
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
	
		// Define triangle graph
		g[0] = scr_graph_cycle(3);
		
		// Set number of partitions
		global.puzzle_limit = 2;
		
		// Set color class size list
		for (var i = 0; i < global.puzzle_limit; i++)
			class[i] = 0;
		
		// Get numbers of edges and selectable objects
		var n = array_length_1d(g[0].e);
		var m = array_length_1d(global.selectable);
		
		// Add edges to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g[0].e[i];
		
		break;
	
	// Decomposition (Bowtie)
	case rm_decomp_bowtie:
		
		global.puzzle = 5;
	
		// Define bowtie graph
		g[0] = scr_graph_bowtie();
		
		// Set number of partitions
		global.puzzle_limit = 2;
		
		// Set color class size list
		for (var i = 0; i < global.puzzle_limit; i++)
			class[i] = 0;
		
		// Get numbers of edges and selectable objects
		var n = array_length_1d(g[0].e);
		var m = array_length_1d(global.selectable);
		
		// Add edges to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g[0].e[i];
		
		break;
	
	// Decomposition (Triforce)
	case rm_decomp_triforce:
		
		global.puzzle = 5;
	
		// Define Triforce graph
		g[0] = scr_graph_triforce();
		
		// Set number of partitions
		global.puzzle_limit = 3;
		
		// Set color class size list
		for (var i = 0; i < global.puzzle_limit; i++)
			class[i] = 0;
		
		// Get numbers of edges and selectable objects
		var n = array_length_1d(g[0].e);
		var m = array_length_1d(global.selectable);
		
		// Add edges to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g[0].e[i];
		
		break;
	
	// Decomposition (K7)
	case rm_decomp_k7:
		
		global.puzzle = 5;
	
		// Define Triforce graph
		g[0] = scr_graph_complete(7);
		
		// Set number of partitions
		global.puzzle_limit = 7;
		
		// Set color class size list
		for (var i = 0; i < global.puzzle_limit; i++)
			class[i] = 0;
		
		// Get numbers of edges and selectable objects
		var n = array_length_1d(g[0].e);
		var m = array_length_1d(global.selectable);
		
		// Add edges to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g[0].e[i];
		
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
	
		// Define spider graph
		g[0] = scr_graph_spider(3);
		
		// Set vertex limit
		global.puzzle_limit = 3;
		
		// Set current set size
		class[0] = 0;
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g[0].v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g[0].v[i];
		
		break;
}
