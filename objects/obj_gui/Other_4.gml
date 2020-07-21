/// @desc Spawn GUI buttons appropriate for current room.

// Do nothing on title screen
if (room == rm_title)
	exit;

// Constant buttons

// Sound button
instance_create_layer(hspace, vspace, "Overlays", obj_gui_sound);

// Music button
instance_create_layer(hspace+1.5*hspace, vspace, "Overlays", obj_gui_music);

// Room-specific buttons
switch room
{
	// Menu screen
	case rm_menu:
		
		// Save clear button
		instance_create_layer(hspace+3*hspace, vspace, "Overlays", obj_gui_save_clear);
	
		// Credits button
		instance_create_layer(room_width-hspace-1.5*hspace, vspace, "Overlays", obj_gui_credits);
	
		// Quit button
		instance_create_layer(room_width-hspace, vspace, "Overlays", obj_gui_quit);
		
		break;
	
	// Technical screens
	case rm_credits:
	case rm_save_clear:
	case rm_ending:
		
		// Menu return button
		instance_create_layer(room_width-hspace, vspace, "Overlays", obj_gui_back);
		
		break;
	
	// Puzzle screens
	
	default:
		
		// Menu return button
		instance_create_layer(room_width-hspace, vspace, "Overlays", obj_gui_back);

		// Room reset button
		instance_create_layer(room_width-hspace-1.5*hspace, vspace, "Overlays", obj_gui_reset);
}
