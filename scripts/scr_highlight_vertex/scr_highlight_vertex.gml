/// @func scr_highlight_vertex(v, alpha)
/// @desc Draws an outline around a specified vertex.
/// @param {obj_vertex} v Vertex to be highlighted.
/// @param {real} alpha Opacity.

// Rename arguments
var v, alpha;
v = argument[0];
alpha = argument[1];

// Define parameters
var col = c_yellow; // color
var r = 12; // circle radius
var seg = 24; // number of segments in circle curves
var err = [1, 1]; // offset to correct errors in primitive drawing

// Draw a circle around the vertex
draw_primitive_begin(pr_linestrip);
for (var i = 0; i <= seg; i++)
{
	var pt = scr_rotate_vector([r, 0], (360*i)/seg); // offset vector
	draw_vertex_color(v.x+pt[0]+err[0], v.y+pt[1]+err[1], col, alpha);
}
draw_primitive_end();
