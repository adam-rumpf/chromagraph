/// @desc Skip title on click.

// Ignore if a click has occurred
if (clicked == true)
	exit;

if (mouse_check_button_pressed(mb_left))
{
	// Deactivate main timer and fast-forward fade-out timer
	alarm[0] = 10*room_speed;
	alarm[1] = 1;
	
	// Speed up screen fader
	obj_screen_fade.fade_time = 0.5;
	obj_screen_fade.fade_speed = 1/(0.5*room_speed);
}
