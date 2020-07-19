/// @desc Spawn GUI buttons appropriate for current room.

// Do nothing on title screen
if (room == rm_title)
	exit;

// Constant buttons

// Sound button
instance_create_layer(16, 16, "Overlays", obj_gui_sound);

// Music button
instance_create_layer(16+1.5*16, 16, "Overlays", obj_gui_music);

// Quit button
instance_create_layer(room_width-16, 16, "Overlays", obj_gui_quit);

// Menu screen buttons
if (room == rm_menu)
{
	instance_create_layer(16+3*16, 16, "Overlays", obj_gui_save_clear);
	exit;
}

// Puzzle room buttons
//###
instance_create_layer(room_width-16-1.5*16, 16, "Overlays", obj_gui_back);
instance_create_layer(room_width-16-3*16, 16, "Overlays", obj_gui_reset);
