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
		break;
}

// Deactivate self
activated = false;
