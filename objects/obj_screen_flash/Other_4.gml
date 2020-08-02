/// @desc Reset opacity.

fading = false;
alpha = 0;

// Slow flash in save delete room
if (room == rm_save_clear)
	fade_time = 5;
else
	fade_time = 0.1;
fade_speed = 1/(fade_time*room_speed);
