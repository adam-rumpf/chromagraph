/// @desc Update appearance and listen for mouse clicks.

// Do nothing if not selected
if (selected == false)
	exit;

// If selected, listen for mouse click to return to main menu
if (mouse_check_button_pressed(mb_left))
	room_goto(rm_menu);//###

// Deselect self
selected = false;
