/// @desc Draw edge coloring.

// If no edge has been linked, do nothing
if (e == id)
	exit;

// Constant color for graceful trees
if (global.puzzle == 4)
	scr_color_edge(e, scr_pallette(1, 1), 0.5);
// Otherwise label-dependent color
else
	scr_color_edge(e, scr_pallette(e.label, 1), 0.5);
