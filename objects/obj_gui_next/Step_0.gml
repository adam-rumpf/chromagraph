/// @desc Update appearance and listen for mouse clicks.

// Update position based on timer
timer = (timer + 1) % room_speed;
xx = x + 4*cos(2*pi*(timer/room_speed));

// Do nothing if not selected
if (selected == false)
	exit;

// If selected, listen for mouse click to move to next puzzle room
if (mouse_check_button_pressed(mb_left))
{
	// Begin sreen fade and set alarm for room transition
	obj_screen_fade.fading = true;
	alarm[0] = 1.5*room_speed*obj_screen_fade.fade_time;
}

// Deselect self
selected = false;
