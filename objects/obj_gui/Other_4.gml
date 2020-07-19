/// @desc Spawn GUI buttons appropriate for current room.

// Do nothing on title screen
if (room == rm_title)
	exit;

// Constant buttons

// Sound button
instance_create_layer(16, 16, "Overlays", obj_gui_sound);

// Music button
instance_create_layer(16+1.5*16, 16, "Overlays", obj_gui_music);

// Menu screen buttons
if (room == rm_menu)
{
	// Save clear button
	instance_create_layer(16+3*16, 16, "Overlays", obj_gui_save_clear);
	
	//###
	// Credits button
	//instance_create_layer(16+4.5*16, 16, "Overlays", obj_gui_credits);
	
	// Quit button
	instance_create_layer(room_width-16, 16, "Overlays", obj_gui_quit);
	
	exit;
}

// Puzzle room buttons

// Menu return button
instance_create_layer(room_width-16, 16, "Overlays", obj_gui_back);

// Room reset button
instance_create_layer(room_width-16-1.5*16, 16, "Overlays", obj_gui_reset);
