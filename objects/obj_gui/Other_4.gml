/// @desc Spawn GUI buttons appropriate for current room.

// Do nothing on title screen
if (room == rm_title)
	exit;

// Get GUI width
var width = display_get_gui_width();

// Constant buttons

// Sound button
var sound = instance_create_layer(hspace, vspace, "Overlays", obj_gui_sound);
sound.xx = hspace;
sound.yy = vspace;

// Music button
var music = instance_create_layer(hspace+1.5*hspace, vspace, "Overlays", obj_gui_music);
music.xx = hspace+1.5*hspace;
music.yy = vspace;

// Room-specific buttons
switch room
{
	// Menu screen
	case rm_menu:
		
		// Save clear button
		var save = instance_create_layer(hspace+3*hspace, vspace, "Overlays", obj_gui_save_clear);
		save.xx = hspace+3*hspace;
		save.yy = vspace;
	
		// Credits button
		var credits = instance_create_layer(width-hspace-1.5*hspace, vspace, "Overlays", obj_gui_credits);
		credits.xx = width-hspace-1.5*hspace;
		credits.yy = vspace;
	
		// Quit button
		var quit = instance_create_layer(width-hspace, vspace, "Overlays", obj_gui_quit);
		quit.xx = width-hspace;
		quit.yy = vspace;
		
		break;
	
	// Technical screens
	case rm_credits:
	case rm_save_clear:
	case rm_ending:
		
		// Menu return button
		var menu = instance_create_layer(width-hspace, vspace, "Overlays", obj_gui_back);
		menu.xx = width-hspace;
		menu.yy = vspace;
		
		break;
	
	// Puzzle screens
	
	default:
		
		// Menu return button
		var menu = instance_create_layer(width-hspace, vspace, "Overlays", obj_gui_back);
		menu.xx = width-hspace;
		menu.yy = vspace;

		// Room reset button
		var reset = instance_create_layer(width-hspace-1.5*hspace, vspace, "Overlays", obj_gui_reset);
		reset.xx = width-hspace-1.5*hspace;
		reset.yy = vspace;
}
