/// @func scr_edge_name(e)
/// @desc Produces the name of an edge, as an ordered pair (tail,head).
/// @param {obj_edge} e Edge to be named.
/// @return {string} Name of the edge.

// Rename argument
var e = argument[0];

// Get vertex IDs of endpoints
var u = e.tail.index;
var v = e.head.index;

return "(" + string(u) + ", " + string(v) + ")";
