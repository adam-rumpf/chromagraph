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
