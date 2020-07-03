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

// Define a number of rotating dots equal to the label number
var dotx = [];
var doty = [];
var r = 6 + 6*floor(n/10);
for (var i = 0; i < (n%10)+1; i++)
{
	var angle = 0.002*(60/room_speed)*(1+n/50)*current_time + (n % 2*pi) + 2*pi*i/((n%10)+1);
	dotx[i] = xx + r*cos(angle) - 1;
	doty[i] = yy - r*sin(angle) - 1;
}
	
// Draw the dots
if (n+1 > 10)
	draw_circle_color(xx-1, yy-1, 8*floor(n/10), col, col, false);
for (var i = 0; i < (n%10)+1; i++)
	draw_circle_color(dotx[i], doty[i], 2, col, col, false);
	
// Draw lines between all dots
for (var i = 1; i < (n%10)+1; i++)
{
	for (var j = 0; j < i; j++)
		draw_line_width_color(dotx[i], doty[i], dotx[j], doty[j], 1, col, col);
}
