/// @desc Draw button label.

// If no button has been linked, do nothing
if (button == id)
	exit;

//###
// Draw number sprite
draw_sprite_ext(spr_vertex_dots, button.image, x, y, 0.5, 0.5, 0, c_black, 0.75);
