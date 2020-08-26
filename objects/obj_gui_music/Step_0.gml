/// @desc Update appearance and listen for mouse clicks.

// Do nothing if not selected
if (selected == false)
	exit;

// If selected, listen for mouse click to toggle music setting
if (mouse_check_button_pressed(mb_left))
{
	global.music--;
	if (global.music < 0)
		global.music = array_length_1d(global.gains) - 1;
	scr_save_settings();
}

// Deselect self
selected = false;
