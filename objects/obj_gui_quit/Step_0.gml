/// @desc Update appearance and listen for mouse clicks.

// Do nothing if not selected
if (selected == false)
	exit;

// If selected, listen for mouse click to quit game
if (mouse_check_button_pressed(mb_left))
	scr_quit();

// Deselect self
selected = false;
