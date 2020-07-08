/// @desc Alter self if activated.

// Quit if not activated
if (activated == false)
	exit;

// Otherwise decide action based on puzzle type
switch global.puzzle
{
	// Edge Coloring
	case 2:	
		
		// Increment color, wrapping around if limit is reached
		label++;
		if (label >= global.color_limit)
			label = -1;
		
		// Prompt a global solution test
		for (var i = 0; i < array_length_1d(obj_game.g); i++)
			scr_properly_edge_colored(obj_game.g[i]);
		
		break;
	
	// Total Coloring
	case 3:	
		
		// Increment color, wrapping around if limit is reached
		label++;
		if (label >= global.color_limit)
			label = -1;
		
		// Prompt a global solution test
		for (var i = 0; i < array_length_1d(obj_game.g); i++)
			scr_properly_totally_colored(obj_game.g[i]);
		
		break;
	
	// Decomposition
	case 5:
	
		// Increment color, wrapping around if limit is reached (also update global totals)
		if (label >= 0)
			obj_game.class[label]--;
		label++;
		if (label >= global.color_limit)
			label = -1;
		else
			obj_game.class[label]++;
		
		// Test for triangle decomposition
		for (var i = 0; i < array_length_1d(obj_game.g); i++)
			scr_triangle_decomposition(obj_game.g[i]);
		
		break;
}

// Deactivate self
activated = false;
