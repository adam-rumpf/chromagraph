/// @desc Fade out and set room transition timer.

obj_screen_fade.fading = true;
alarm[2] = 1.5*room_speed*obj_screen_fade.fade_time;
