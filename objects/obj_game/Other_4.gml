/// @desc Initialize objects within room.

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
		Parameters: color_limit (number of available colors)
	============================================================*/
	
	// Coloring (P2)
	case rm_coloring_p2:
		
		global.puzzle = 1;
	
		// Define path graph
		g[0] = scr_graph_p2();
		
		// Set color limit
		global.color_limit = 2;
		
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
		global.color_limit = 3;
		
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
		global.color_limit = 3;
		
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
		global.color_limit = 3;
		
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
		global.color_limit = 3;
		
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
		global.color_limit = 3;
		
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
		global.color_limit = 3;
		
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
		global.color_limit = 4;
		
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
		global.color_limit = 20;
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g[0].v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g[0].v[i];
		
		//###
		// Give all vertices a separate color
		for (var i = 0; i < n; i++)
			g[0].v[i].label = i;
		
		break;
	
	/*============================================================
		Edge Coloring Puzzles (Type 2)
		1 Graph
		Selectable: Buttons, Edges
		Parameters: color_limit (number of available colors)
	============================================================*/
	
	// Coloring (Petersen Star)
	case rm_edge_coloring_petersen_star:
		
		global.puzzle = 2;
	
		// Define Petersen graph
		g[0] = scr_graph_petersen_star();
		
		// Set color limit
		global.color_limit = 4;
		
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
		Parameters: color_limit (number of available colors)
	============================================================*/
	
	// Total Coloring (Dart)
	case rm_total_coloring_dart:
		
		global.puzzle = 3;
	
		// Define dart graph
		g[0] = scr_graph_dart();
		
		// Set color limit
		global.color_limit = 5;
		
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
}
