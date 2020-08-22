/// @desc Go to credits room.

// Fade out and set alarm to change rooms
obj_screen_fade.fading = true;
alarm[2] = 1.5*room_speed*obj_screen_fade.fade_time;
