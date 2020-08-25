/// @desc Draw edge.

// Special color for save deletion room
if (room == rm_save_clear)
{
	scr_draw_edge(id, make_color_hsv(0, 0, 15));
	exit;
}

// If unlabeled, color gray and then stop
if (label < 0)
{
	scr_draw_edge(id, make_color_hsv(0, 0, 31));
	exit;
}

// Otherwise choose color based on puzzle type
switch global.puzzle
{
	// Edge Coloring puzzles
	case 2:	
	case 3:	
	case 5:
		scr_draw_edge(id, scr_pallette(label, 0.5));
		break;
	
	// Graceful trees
	case 4:
		scr_draw_edge(id, scr_pallette(0, 0.5));
		break;
}
