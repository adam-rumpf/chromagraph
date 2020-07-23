/// @desc Update appearance and listen for mouse clicks.

image_index = type;
image_blend = scr_menu_pallette(type, 0.8);

// If selected, change color and listen for mouse click
if (selected == true)
{
	image_blend = scr_menu_pallette(type, 1.2);
	
	// If button is clicked, go to its puzzle room
	if (mouse_check_button_pressed(mb_left))
	{
		// Begin sreen fade and set alarm for room transition
		obj_screen_fade.fading = true;
		alarm[0] = room_speed*obj_screen_fade.fade_time;
	}
}

// Deselect self
selected = false;
