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
		Coloring Puzzles (Type 0)
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
	
	// Coloring (Petersen)
	case rm_coloring_petersen:
		
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
}