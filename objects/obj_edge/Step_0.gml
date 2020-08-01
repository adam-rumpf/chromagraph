/// @desc Alter self if activated.

// Quit if not activated
if (activated == false)
	exit;

// Decide action based on puzzle type
switch global.puzzle
{
	// Edge Coloring
	case 2:	
		
		// Increment color, wrapping around if limit is reached
		label++;
		if (label >= global.puzzle_limit)
			label = -1;
		
		// Play a sound
		scr_play_sound_pitch(snd_breath, 50, label);
		
		// Prompt a global solution test
		global.puzzle_solved = scr_properly_edge_colored(obj_game.g);
		
		break;
	
	// Total Coloring
	case 3:	
		
		// Increment color, wrapping around if limit is reached
		label++;
		if (label >= global.puzzle_limit)
			label = -1;
		
		// Play a sound
		scr_play_sound_pitch(snd_breath, 50, label);
		
		// Prompt a global solution test
		global.puzzle_solved = scr_properly_totally_colored(obj_game.g);
		
		break;
	
	// Decomposition
	case 5:
	
		// Increment color, wrapping around if limit is reached (also update global totals)
		if (label >= 0)
			obj_game.class[label]--;
		label++;
		if (label >= global.puzzle_limit)
			label = -1;
		else
			obj_game.class[label]++;
		
		// Play a sound
		scr_play_sound_pitch(snd_breath, 50, label);
		
		// Test for triangle decomposition
		global.puzzle_solved = scr_triangle_decomposition(obj_game.g);
		
		break;
}

// Deactivate self
activated = false;
