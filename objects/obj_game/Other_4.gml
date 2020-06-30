/// @desc Initialize objects within room.

// Main case structure for each room
switch room
{
	// Title screen
	case rm_title:
		//###
		break;
	
	/*============================================================
		Coloring Puzzles
		1 Graph
		Selectable: Buttons, Vertices
	============================================================*/
	
	// Coloring (P2)
	case rm_coloring_p2:
	
		// Define path graph
		g[0] = scr_graph_p2();
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g[0].v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g[0].v[i];
		
		break;
	
	// Coloring (Dart)
	case rm_coloring_dart:
	
		// Define dart graph
		g[0] = scr_graph_dart();
		
		// Get numbers of vertices and selectable objects
		var n = array_length_1d(g[0].v);
		var m = array_length_1d(global.selectable);
		
		// Add vertices to selectable object list
		for (var i = 0; i < n; i++)
			global.selectable[m+i] = g[0].v[i];
		
		//###
		for (var i = 0; i < array_length_1d(g[0].e); i++)
			global.selectable[m+n+i] = g[0].e[i];
		
		break;
}
