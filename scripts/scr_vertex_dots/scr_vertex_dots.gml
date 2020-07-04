/// @func scr_vertex_dots(x, y, col, n)
/// @desc Draws a rotating array of dots.
/// @param {int} x Horizontal coordinate of center.
/// @param {int} y Vertical coordinate of center.
/// @param {color} col Fill color for dots.
/// @param {int} n Number of dots to draw.

// Rename arguments
var xx, yy, col, n;
xx = argument[0];
yy = argument[1];
col = argument[2];
n = argument[3];

// For the first label, just draw a single dot
if (n == 0)
{
	var angle = 0.002*(60/room_speed)*current_time;
	draw_circle_color(xx+2*cos(angle)-1, yy-2*sin(angle)-1, 2, col, col, false);
	exit;
}

// Otherwise define a number of rotating dots equal to the label number
var dotx = [];
var doty = [];
var r = 10;
for (var i = 0; i < (n%8)+1; i++)
{
	var angle = 0.002*(60/room_speed)*(1+n/50)*current_time + (n % 2*pi) + 2*pi*i/((n%8)+1);
	dotx[i] = xx + r*cos(angle) - 1;
	doty[i] = yy - r*sin(angle) - 1;
}
	
// Draw a central octagon for groups larger than 8
if (n+1 > 8)
{
	//draw_circle_color(xx-1, yy-1, 6*floor(n/8), col, col, false);
	draw_primitive_begin(pr_trianglefan);
	for (var i = 0; i <= 8; i++)
	{
		var angle = 0.002*(60/room_speed)*(1+n/50)*current_time + (n % 2*pi) + 2*pi*i/8;
		draw_vertex_color(xx + 6*cos(angle), yy - 6*sin(angle), col, 1);
	}
	draw_primitive_end();
}

// Draw rotating dots
for (var i = 0; i < (n%8)+1; i++)
	draw_circle_color(dotx[i], doty[i], 2, col, col, false);
	
// Draw lines between all dots
for (var i = 1; i < (n%8)+1; i++)
{
	for (var j = 0; j < i; j++)
		draw_line_width_color(dotx[i], doty[i], dotx[j], doty[j], 1, col, col);
}
