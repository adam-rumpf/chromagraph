/// @desc Update camera position.

// Screen movement
if (scrolling == true)
{
	// Move up slowly
	pos -= 1;

	// If this takes us past the top, stop scrolling
	if (pos < pos_min)
	{
		pos = pos_min;
		scrolling = false;
	
		// Set room transition timer
		alarm[1] = 8*room_speed;
		
		// Start listening for mouse clicks
		listen = true;
	}
	
	// Move camera
	camera_set_view_pos(view_camera[0], 0, pos);
}

// If listening for a mouse click, allow early transition
if (listen == true)
{
	if (mouse_check_button_pressed(mb_left))
		alarm[1] = 1;
}
