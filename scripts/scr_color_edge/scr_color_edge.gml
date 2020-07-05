/// @func scr_color_edge(e, col, alpha)
/// @desc Draws the fill effects for a given edge label.
/// @param {obj_edge} e Edge object to color.
/// @param {int} col Color to use in drawing edge.
/// @param {real} alpha Opacity.

// Rename arguments
var e, col, alpha;
e = argument[0];
col = argument[1];
alpha = argument[2];

// Draw nothing if label is negative
if (e.label < 0)
	exit;

//###
// Draw particle effects

/*
// Draw normal overlay
if (v.angry == false)
	scr_vertex_dots(v.x, v.y, col, v.label);
// Draw angry overlay
else
	scr_vertex_dots(v.x+irandom_range(-3,3), v.y+irandom_range(-3,3), col, v.label);
*/

//###
var vec = scr_resize_vector([e.head.x-e.tail.x, e.head.y-e.tail.y], 20);
if (e.angry == false)
	draw_line_width_color(e.tail.x+vec[0]-1, e.tail.y+vec[1]-1, e.head.x-vec[0]-1, e.head.y-vec[1]-1, 4, col, col);
else
	draw_line_width_color(e.tail.x+vec[0]-1+irandom_range(-3,3), e.tail.y+vec[1]-1+irandom_range(-3,3), e.head.x-vec[0]-1+irandom_range(-3,3), e.head.y-vec[1]-1+irandom_range(-3,3), 2, col, col);
