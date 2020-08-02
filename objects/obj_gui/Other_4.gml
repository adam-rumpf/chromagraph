/// @desc Spawn GUI buttons appropriate for current room.

// Do nothing on title screen
if (room == rm_title)
	exit;

// Set text opacity for new game room
if (room == rm_coloring_triangle_new)
{
	alpha = 0;
	fade = false;
	alarm[0] = 15*room_speed;
}

// Set text opacity for save delete room
if (room == rm_save_clear)
{
	alpha = 1;
	fade = false;
	alarm[0] = 5*room_speed;
}

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
		
		// Get GUI width
		var width = display_get_gui_width();
		
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
		
		// Get room width
		var width = room_width;
		
		// Menu return button
		var menu = instance_create_layer(width-hspace, vspace, "Overlays", obj_gui_back);
		menu.xx = width-hspace;
		menu.yy = vspace;
		
		// On save delete screen, also spawn a cancel button
		if (room == rm_save_clear)
			instance_create_layer(room_width/2, room_height - 100, "Instances", obj_gui_cancel);
		
		break;
	
	// Puzzle screens
	
	default:
		
		// Get room width
		var width = room_width;
		var offset = 0; // offset to compensate for different button layouts
		
		// Menu return button (all puzzles except new game)
		if (room != rm_coloring_triangle_new)
		{
			var menu = instance_create_layer(width-hspace, vspace, "Overlays", obj_gui_back);
			menu.xx = width-hspace;
			menu.yy = vspace;
			offset = -1.5*hspace;
		}

		// Room reset button
		var reset = instance_create_layer(width-hspace+offset, vspace, "Overlays", obj_gui_reset);
		reset.xx = width-hspace+offset;
		reset.yy = vspace;
}
