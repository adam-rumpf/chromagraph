/// @desc Update appearance and listen for mouse clicks.

// Do nothing if not selected
if (selected == false)
	exit;

// If selected, listen for mouse click to quit game
if (mouse_check_button_pressed(mb_left))
{
	// Begin screen fade and set alarm for game quit
	obj_screen_fade.fading = true;
	alarm[0] = room_speed*obj_screen_fade.fade_time;
}

// Deselect self
selected = false;
