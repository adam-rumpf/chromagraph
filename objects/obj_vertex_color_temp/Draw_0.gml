/// @desc Draw temporary vertex effect and decrease opacity.

// Draw dots
draw_sprite_ext(spr_vertex_dots, 0, x+irandom_range(-2,2), y+irandom_range(-2,2), scale, scale, 0, scr_pallette(0, 1), alpha);

// Decrease opacity
alpha -= 0.05*(60/room_speed);

// Destroy self if invisible
if (alpha <= 0)
	instance_destroy();
