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
		if (label >= global.puzzle_limit)
			label = -1;
		
		// Set color
		image_blend = scr_pallette(label, 0.5);
		
		// Prompt a global solution test
		global.puzzle_solved = scr_properly_colored(obj_game.g);
		
		break;
	
	// Total Coloring
	case 3:
		
		// Increment color, wrapping around if limit is reached
		label++;
		if (label >= global.puzzle_limit)
			label = -1;
		
		// Set color
		image_blend = scr_pallette(label, 0.5);
		
		// Prompt a global solution test
		global.puzzle_solved = scr_properly_totally_colored(obj_game.g);
		
		break;
	
	// Graceful Trees
	case 4:
		
		// Choose how to increment color
		if (label < 0)
			label = 0;
		else if (label < 2*array_length_1d(obj_game.g.v)-2)
			label += 2;
		else
			label = -1;
		
		// Set color (constant)
		image_blend = scr_pallette(min(0,label), 0.5);
		
		// Prompt edge label updates and solution test
		global.puzzle_solved = scr_graceful_edge_update(obj_game.g);
		
		break;
	
	// Dominating Set
	case 6:
		
		// Toggle color and increment global total
		if (label < 0)
		{
			// Toggle only if under the allowed limit
			if (obj_game.class[0] >= global.puzzle_limit)
				instance_create_layer(x, y, "Vertex_Effects", obj_vertex_color_temp);
			else
			{
				label = 0;
				obj_game.class[0]++;
			}
		}
		else
		{
			label = -1;
			obj_game.class[0]--;
		}
		
		// Set color
		image_blend = scr_pallette(label, 0.5);
		
		// Prompt a global solution test
		global.puzzle_solved = scr_set_dominating(obj_game.g, 0);
		
		break;
	
	// Fall Coloring
	case 7:
		
		// Increment color, wrapping around if limit is reached
		label++;
		if (label >= global.puzzle_limit)
			label = -1;
		
		// Set color
		image_blend = scr_pallette(label, 0.5);
		
		// Prompt a global solution test
		global.puzzle_solved = scr_properly_fall_colored(obj_game.g);
		
		break;
	
	// Equitable Coloring
	case 8:
		
		// Increment color, wrapping around if limit is reached (also update global totals)
		if (label >= 0)
			obj_game.class[label]--;
		label++;
		if (label >= global.puzzle_limit)
			label = -1;
		else
			obj_game.class[label]++;
		
		// Set color
		image_blend = scr_pallette(label, 0.5);
		
		// Prompt a global solution test
		global.puzzle_solved = scr_equitably_colored(obj_game.g, 0);
		
		break;
}

// Deactivate self
activated = false;
