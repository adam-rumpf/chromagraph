/// @desc Draw offset edge coloring.

// If no edge has been linked, do nothing
if (e == id)
	exit;

// Constant color for dominating set
if (global.puzzle == 6)
	scr_edge_line(e, scr_pallette(0, 1), 2, 3, 0, 1, alpha)
//###
/*scr_edge_line(e, scr_pallette(0, 1), 1, 4, 0, 3, alpha);
scr_edge_line(e, scr_pallette(1, 1), 1, 4, 1, 3, alpha);
scr_edge_line(e, scr_pallette(2, 1), 1, 4, 2, 3, alpha);*/
