/// @func scr_draw_edge(e)
/// @desc Draws a specified edge.
/// @param {obj_edge} e Edge to be drawn.

// Rename argument
var e = argument[0];

// Define parameters
var col = make_color_hsv(0, 0, 31); // color
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

//###
/*
// Define parameters
var col = c_yellow; // color
var r = 20; // circle radius
var seg = 12; // number of segments in circle curves
var err = [1, 1]; // offset to correct errors in primitive drawing

// Calculate coordinates of points next to head and tail and perpendicular to edge
var ev = [e.head.x-e.tail.x, e.head.y-e.tail.y]; // edge vector
var lv = scr_resize_vector(scr_rotate_vector(ev, 90), r); // vector to left point

// Begin to draw outline
draw_primitive_begin(pr_linestrip);

// Draw semicircular outline of tail
for (var i = 0; i <= seg; i++)
{
	var pt = scr_rotate_vector(lv, (180*i)/seg);
	draw_vertex_color(e.tail.x+pt[0]+err[0], e.tail.y+pt[1]+err[1], col, alpha);
}

// Draw right edge
draw_vertex_color(e.head.x-lv[0]+err[0], e.head.y-lv[1]+err[1], col, alpha);

// Draw semicircular outline of head
for (var i = 0; i <= seg; i++)
{
	var pt = scr_rotate_vector(lv, 180 + (180*i)/seg);
	draw_vertex_color(e.head.x+pt[0]+err[0], e.head.y+pt[1]+err[1], col, alpha);
}

// Draw left edge
draw_vertex_color(e.tail.x+lv[0]+err[0], e.tail.y+lv[1]+err[1], col, alpha);

// Finish drawing outline
draw_primitive_end();
*/
