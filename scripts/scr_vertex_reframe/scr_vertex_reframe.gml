/// @func scr_vertex_reframe(g, lb, rb, ub, db)
/// @desc Rescales all vertex positions to fit within a frame relative to the window boundaries.
/// @param {obj_graph} g Graph to rescale.
/// @param {int} lb Left border (pixels).
/// @param {int} rb Right border (pixels).
/// @param {int} ub Upper border (pixels; top of screen corresponds to y = 0).
/// @param {int} db Downward border (pixels; bottom of screen corresponds to y = room_height).

// Rename arguments
var g, lb, rb, ub, db
g = argument[0];
lb = argument[1];
rb = argument[2];
ub = argument[3];
db = argument[4];

// Define new total width and height
var w, h;
w = room_width - rb - lb;
h = room_height - db - ub;

// Verify that coordinates are valid
if (w <= 0 || h <= 0)
	exit;

// Find bounding box for current vertices
var xmin, xmax, ymin, ymax; // most extreme current coordinates
xmin = infinity;
xmax = -infinity;
ymin = infinity;
ymax = -infinity;
for (var i = 0; i < array_length_1d(g.v); i++)
{
	xmin = min(g.v[i].x, xmin);
	xmax = max(g.v[i].x, xmax);
	ymin = min(g.v[i].y, ymin);
	ymax = max(g.v[i].y, ymax);
}

// Reposition all vertices to base at origin
for (var i = 0; i < array_length_1d(g.v); i++)
{
	g.v[i].x -= xmin;
	g.v[i].y -= ymin;
}

// Rescale all vertex coordinates to achieve desired dimensions
var factor = min(w/(xmax-xmin), h/(ymax-ymin)); // rescaling factor
for (var i = 0; i < array_length_1d(g.v); i++)
{
	g.v[i].x *= factor;
	g.v[i].y *= factor;
}
xmax -= xmin;
ymax -= ymin;
xmax *= factor;
ymax *= factor;

// Center coordinates
for (var i = 0; i < array_length_1d(g.v); i++)
{
	g.v[i].x += (room_width - xmax)/2;
	g.v[i].y += (room_height - ymax)/2;
}












// Rebase overlay objects
scr_vertex_rebase(g);
