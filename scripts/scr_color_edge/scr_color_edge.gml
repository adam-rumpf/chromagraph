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
{
	// Normal overlay
	var tc = [e.tail.x + vec[0] - 1, e.tail.y + vec[1] - 1]; // tail drawing coordinates
	var hc = [e.head.x - vec[0] - 1, e.head.y - vec[1] - 1]; // head drawing coordinates
	draw_line_width_color(tc[0], tc[1], hc[0], hc[1], 2, col, col);
	for (var i = 0; i < e.label+1; i++)
	{
		var xx = ((i+1)/(e.label+2))*tc[0] + (1 - (i+1)/(e.label+2))*hc[0];
		var yy = ((i+1)/(e.label+2))*tc[1] + (1 - (i+1)/(e.label+2))*hc[1];
		draw_circle_color(xx, yy, 4, col, col, false);
	}
}
else
{
	// Angry overlay
	var tc = [e.tail.x + vec[0] - 1 + irandom_range(-2,2), e.tail.y + vec[1] - 1 + irandom_range(-2,2)]; // tail drawing coordinates
	var hc = [e.head.x - vec[0] - 1 + irandom_range(-2,2), e.head.y - vec[1] - 1 + irandom_range(-2,2)]; // head drawing coordinates
	draw_line_width_color(tc[0], tc[1], hc[0], hc[1], 2, col, col);
	for (var i = 0; i < e.label+1; i++)
	{
		var xx = ((i+1)/(e.label+2))*tc[0] + (1 - (i+1)/(e.label+2))*hc[0];
		var yy = ((i+1)/(e.label+2))*tc[1] + (1 - (i+1)/(e.label+2))*hc[1];
		draw_circle_color(xx, yy, 4, col, col, false);
	}
}
