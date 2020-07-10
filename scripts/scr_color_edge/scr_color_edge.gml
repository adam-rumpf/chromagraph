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

// Define coordinates of endpoints
var vec = scr_resize_vector([e.head.x-e.tail.x, e.head.y-e.tail.y], 20); // vector used to bound dot locations
var tc = [e.tail.x - 1, e.tail.y - 1]; // tail coordinates
var hc = [e.head.x - 1, e.head.y - 1]; // head coordinates
if (e.angry == true)
{
	// Jostle coordinates if angry
	tc[0] += irandom_range(-2,2);
	tc[1] += irandom_range(-2,2);
	hc[0] += irandom_range(-2,2);
	hc[1] += irandom_range(-2,2);
}
var tic = [tc[0] + vec[0], tc[1] + vec[1]]; // tail dot coordinates
var hic = [hc[0] - vec[0], hc[1] - vec[1]]; // head dot coordinates

// Draw line and dots
draw_line_width_color(tc[0], tc[1], hc[0], hc[1], 2, col, col);
for (var i = 0; i < e.label+1; i++)
{
	var xx = ((i+1)/(e.label+2))*tic[0] + (1 - (i+1)/(e.label+2))*hic[0];
	var yy = ((i+1)/(e.label+2))*tic[1] + (1 - (i+1)/(e.label+2))*hic[1];
	var r = 4 + 1.5*cos(0.002*(60/room_speed)*(1+(20-e.label)/40)*current_time);
	draw_circle_color(xx, yy, r, col, col, false);
}
