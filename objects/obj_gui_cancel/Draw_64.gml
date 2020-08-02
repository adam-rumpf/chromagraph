/// @desc Draw cancel button.

var alpha; // opacity

// Choose image attributes based on selection
if (selected == true)
	alpha = 1;
else
	alpha = 0.6;

// Set text attributes
draw_set_font(fnt_standard);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw text
draw_text_color(x, y, "Cancel", c_white, c_white, c_white, c_white, alpha);

// Draw sprite
draw_sprite_ext(spr_button_outline, 0, x, y, 1, 1, 0, c_white, alpha);
