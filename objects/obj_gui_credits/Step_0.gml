/// @desc Update appearance and listen for mouse clicks.

// Do nothing if not selected
if (selected == false)
	exit;

// If selected, listen for mouse click to go to credits room
if (mouse_check_button_pressed(mb_left))
	//### Screen transition
	room_goto(rm_credits);

// Deselect self
selected = false;
