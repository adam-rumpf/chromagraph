/// @desc Update appearance and listen for mouse clicks.

// Do nothing if not selected
if (selected == false)
	exit;

// If selected, listen for mouse click to toggle music setting
if (mouse_check_button_pressed(mb_left))
	global.music_on = !global.music_on;

// Deselect self
selected = false;
