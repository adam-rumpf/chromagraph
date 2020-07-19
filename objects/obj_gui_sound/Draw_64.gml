/// @desc Draw GUI button.

// Choose image index based on global settings
var index = 0;
if (global.sound_on == false)
	index = 1;

// Choose image attributes based on selection
if (selected == true)
	draw_sprite_ext(spr_button_sound, index, x, y, 0.5, 0.5, 0, c_white, 1);
else
	draw_sprite_ext(spr_button_sound, index, x, y, 0.5, 0.5, 0, c_white, 0.6);
