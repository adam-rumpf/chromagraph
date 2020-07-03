/// @desc Activate if selected.

if (selected == true)
{
	image_alpha = 0.9;
	selected = false;
	
	// On click, return to main menu
	if (mouse_check_button_pressed(mb_left))
		room_goto(rm_menu);
}
else
	image_alpha = 0.5;
