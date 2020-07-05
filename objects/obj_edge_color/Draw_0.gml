/// @desc Draw edge coloring.

if (e != id)
{
	// Constant color for graceful trees
	if (global.puzzle == 4)
		scr_color_edge(e, scr_pallette(0, 1), 0.5);
	// Otherwise label-dependent color
	else
		scr_color_edge(e, scr_pallette(e.label, 1), 0.5);
}
