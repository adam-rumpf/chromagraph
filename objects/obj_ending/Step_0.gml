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
	
		// Set screen fade timer
		alarm[1] = 1;//###5*room_speed;
	}
	
	// Move camera
	camera_set_view_pos(view_camera[0], 0, pos);
}

// Screen fading
if (fading == true)
{
	// Increase overlay opacity
	alpha += 1/(2*room_speed);
	
	// Stop at 75%
	if (alpha > 0.75)
	{
		alpha = 0.75;
		fading = false;
		
		// Show credits after a delay
		alarm[2] = 1;//###2*room_speed;
	}
}
