/// @desc Activate if selected.

if (selected == true)
{
	image_alpha = 0.9;
	selected = false;
	
	// On click, save and quit game
	if (mouse_check_button_pressed(mb_left))
	{
		scr_game_save();
		game_end();
	}
}
else
	image_alpha = 0.5;
