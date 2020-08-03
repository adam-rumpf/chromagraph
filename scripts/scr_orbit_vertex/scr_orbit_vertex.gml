/// @func scr_orbit_vertex(v, lab, lim)
/// @desc Draws colored dots orbiting around a vertex.
/// @param {obj_vertex} v Vertex object to orbit.
/// @param {int} lab Label to use to determine color.
/// @param {int} lim Number of available labels.

// Rename arguments
var v, lab, lim;
v = argument[0];
lab = argument[1];
lim = argument[2];

// Draw nothing if label is negative
if (lab < 0)
	exit;

// Define parameters
var col = scr_pallette(lab, 1); // set color based on given label
var r = 26; // orbit radius
var angle = 0.00225*(60/room_speed)*current_time + (v.x*v.y % 360) + 2*pi*(lab/lim); // orbit angle

//### Particles?

// Draw dots
for (var i = 0; i < lab+1; i++)
{
	var xx, yy, offset;
	offset = 0.2*(i - ((lab+1)/2));
	xx = v.x + r*cos(angle+offset);
	yy = v.y - r*sin(angle+offset);
	draw_circle_color(xx, yy, 2, col, col, false);
}
