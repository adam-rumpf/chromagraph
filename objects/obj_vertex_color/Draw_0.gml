/// @desc Draw vertex coloring.

if (v != id)
{
	// Constant color for graceful trees
	if (global.puzzle == 4)
		scr_color_vertex(v, scr_pallette(0, 1), 0.5);
	// Otherwise label-dependent color
	else
		scr_color_vertex(v, scr_pallette(v.label, 1), 0.5);
}
