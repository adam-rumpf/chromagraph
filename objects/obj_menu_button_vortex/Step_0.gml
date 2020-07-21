/// @desc Update appearance and listen for mouse clicks.

image_angle -= 4*(60/room_speed);
image_blend = scr_menu_pallette(type, 0.8);

// If selected, change color and listen for mouse click
if (selected == true)
{
	image_blend = scr_menu_pallette(type, 1.2);
	
	// If button is clicked, go to its puzzle room
	if (mouse_check_button_pressed(mb_left))
		room_goto(puzzle);
}

// Deselect self
selected = false;
