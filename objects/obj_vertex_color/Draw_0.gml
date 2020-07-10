/// @desc Draw vertex coloring.

// If no vertex has been linked, do nothing
if (v == id)
	exit;

// Constant color for graceful trees
if (global.puzzle == 4)
	scr_color_vertex(v, scr_pallette(0, 1));
// Otherwise label-dependent color
else
	scr_color_vertex(v, scr_pallette(v.label, 1));

// Draw ring overlay and shine
draw_sprite_ext(spr_vertex_ring, 0, x, y, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_vertex_shine, 0, x, y, 2, 2, 0, c_white, 0.05);
