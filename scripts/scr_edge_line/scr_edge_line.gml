/// @func scr_edge_line(e, col, w, r, lab, num, alpha)
/// @desc Draws a line over a given edge.
/// @param {obj_edge} e Edge object to draw on.
/// @param {int} col Color to use in drawing line.
/// @param {int} w Width of line.
/// @param {int} r Radius of circle for line movement.
/// @param {int} lab Label of color class.
/// @param {int} num Number of color classes.
/// @param {real} alpha Opacity.

// Rename arguments
var e, col, w, r, lab, num, alpha;
e = argument[0];
col = argument[1];
w = argument[2];
r = argument[3];
lab = argument[4];
num = argument[5];
alpha = argument[6];

//###
// Draw particle effects

// Calculate coordinates of points next to head and tail and perpendicular to edge
var ev = [e.head.x-e.tail.x, e.head.y-e.tail.y]; // edge vector
var lv = scr_resize_vector(scr_rotate_vector(ev, 90), w); // vector to left point

// Pulsate endpoints
var angle = 0.003*(60/room_speed)*current_time + 2*pi*(lab/num);
var os = [0, 0, 0, 0];
os[0] = r*cos(angle);
os[1] = r*sin(angle);
os[2] = r*cos(angle + 1);
os[3] = r*sin(angle + 1);

// Draw line
draw_primitive_begin(pr_trianglestrip);
draw_vertex_color(e.tail.x+lv[0]+os[0], e.tail.y+lv[1]+os[1], col, alpha);
draw_vertex_color(e.tail.x-lv[0]+os[0], e.tail.y-lv[1]+os[1], col, alpha);
draw_vertex_color(e.head.x+lv[0]+os[2], e.head.y+lv[1]+os[3], col, alpha);
draw_vertex_color(e.head.x-lv[0]+os[2], e.head.y-lv[1]+os[3], col, alpha);
draw_primitive_end();
