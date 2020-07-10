/// @func scr_draw_edge(e, col)
/// @desc Draws a specified edge.
/// @param {obj_edge} e Edge to be drawn.
/// @param {int} col Color of edge background.

// Rename arguments
var e, col;
e = argument[0];
col = argument[1];

// Define parameters
var r = 4; // radius (total width is 2r+1)
var alpha = 0.5; // opacity

// Calculate coordinates of points next to head and tail and perpendicular to edge
var ev = [e.head.x-e.tail.x, e.head.y-e.tail.y]; // edge vector
var lv = scr_resize_vector(scr_rotate_vector(ev, 90), r); // vector to left point

// Draw line
draw_primitive_begin(pr_trianglestrip);
draw_vertex_color(e.tail.x+lv[0], e.tail.y+lv[1], col, alpha);
draw_vertex_color(e.tail.x-lv[0], e.tail.y-lv[1], col, alpha);
draw_vertex_color(e.head.x+lv[0], e.head.y+lv[1], col, alpha);
draw_vertex_color(e.head.x-lv[0], e.head.y-lv[1], col, alpha);
draw_primitive_end();
