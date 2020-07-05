/// @func scr_color_vertex(v, col, alpha)
/// @desc Draws the fill effects for a given vertex label.
/// @param {obj_vertex} v Vertex object to color.
/// @param {int} col Color to use in drawing vertex.
/// @param {real} alpha Opacity.

// Rename arguments
var v, col, alpha;
v = argument[0];
col = argument[1];
alpha = argument[2];

// Draw nothing if label is negative
if (v.label < 0)
	exit;

//###
// Draw particle effects

// Draw normal overlay
if (v.angry == false)
	scr_vertex_dots(v.x, v.y, col, v.label);
// Draw angry overlay
else
	scr_vertex_dots(v.x+irandom_range(-3,3), v.y+irandom_range(-3,3), col, v.label);
