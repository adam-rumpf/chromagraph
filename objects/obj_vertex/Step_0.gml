/// @desc Alter self if activated.

// Quit if not activated
if (activated == false)
	exit;

// Otherwise decide action based on puzzle type
switch global.puzzle
{
	// Coloring
	case 1:	
		
		// Increment color, wrapping around if limit is reached
		label++;
		if (label >= global.color_limit)
			label = -1;
		
		// Prompt a global solution test
		for (var i = 0; i < array_length_1d(obj_game.g); i++)
			scr_properly_colored(obj_game.g[i]);
		
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
	
	// Graceful Trees
	case 4:	
		
		// Choose how to increment color
		if (label < 0)
			label = 0;
		else if (label < 2*array_length_1d(obj_game.g[0].v)-2)
			label += 2;
		else
			label = -1;
		
		// Prompt edge label updates and solution test
		for (var i = 0; i < array_length_1d(obj_game.g); i++)
			scr_graceful_edge_update(obj_game.g[i]);
		
		break;
}

// Deactivate self
activated = false;
