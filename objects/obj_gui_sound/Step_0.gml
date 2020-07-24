/// @desc Update appearance and listen for mouse clicks.

// Do nothing if not selected
if (selected == false)
	exit;

// If selected, listen for mouse click to toggle sound setting
if (mouse_check_button_pressed(mb_left))
{
	global.sound_on = !global.sound_on;
	scr_save_settings();
}

// Deselect self
selected = false;
