/// @desc Draw GUI button.

// Choose image attributes based on selection
if (selected == true)
	draw_sprite_ext(spr_button_quit, 0, x, y, 0.5, 0.5, 0, c_white, 1);
else
	draw_sprite_ext(spr_button_quit, 0, x, y, 0.5, 0.5, 0, c_white, 0.6);
