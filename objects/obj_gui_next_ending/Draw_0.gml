/// @desc Draw button.

// Choose image attributes based on selection
if (selected == true)
	draw_sprite_ext(spr_button_next, 0, xx, yy, 1.5, 1.5, 0, c_white, 1);
else
	draw_sprite_ext(spr_button_next, 0, xx, yy, 1.5, 1.5, 0, c_white, 0.6);
