/// @func scr_color_vertex(v, col)
/// @desc Draws the fill effects for a given vertex label.
/// @param {obj_vertex} v Vertex object to color.
/// @param {int} col Color to use in drawing vertex.

// Rename arguments
var v, col;
v = argument[0];
col = argument[1];

// Draw nothing if label is negative
if (v.label < 0)
	exit;

// Define parameters
var scale = 24/sprite_get_width(spr_vertex_dots); // image scale
var angle = 0.04*(60/room_speed)*(1+(20-v.label)/40)*current_time; // image angle

//###
// Draw particle effects

// Draw dot overlay
if (v.angry == false)
	// Normal overlay
	draw_sprite_ext(spr_vertex_dots, v.label, v.x, v.y, scale, scale, angle, col, 1);
else
	// Angry overlay
	draw_sprite_ext(spr_vertex_dots, v.label, v.x+irandom_range(-2,2), v.y+irandom_range(-2,2), scale, scale, angle, col, 0.9);
