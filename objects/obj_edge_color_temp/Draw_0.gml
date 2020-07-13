/// @desc Draw offset edge coloring.

// If no edge has been linked, do nothing
if (e == id || label < 0)
	exit;

// Draw line
if (global.puzzle == 6)
	// Constant color for dominating set
	scr_edge_line(e, scr_pallette(0, 1), 2, 3, 0, 1, alpha)
else
	// Class color otherwise
	scr_edge_line(e, scr_pallette(label, 1), 1, 4, label, global.puzzle_limit, alpha);
