/// @desc Update appearance and listen for mouse clicks.

// Do nothing if not selected
if (selected == false)
	exit;

// If selected, listen for mouse click to toggle sound setting
if (mouse_check_button_pressed(mb_left))
{
	global.sound--;
	if (global.sound < 0)
		global.sound = array_length_1d(global.gains) - 1;
	scr_save_settings();
}

// Deselect self
selected = false;
