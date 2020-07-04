/// @func scr_color_edge(e, alpha)
/// @desc Draws the fill effects for a given edge label.
/// @param {obj_edge} e Edge object to color.
/// @param {real} alpha Opacity.

// Rename arguments
var e, alpha;
e = argument[0];
alpha = argument[1];

// Draw nothing if label is negative
if (e.label < 0)
	exit;

// Define color
var col;
switch e.label
{
	case 0:
		col = make_color_rgb(255, 0, 0);
		break;
	case 1:
		col = make_color_rgb(0, 63, 255);
		break;
	case 2:
		col = make_color_rgb(0, 255, 0);
		break;
	case 3:
		col = make_color_rgb(192, 15, 192);
		break;
	case 4:
		col = make_color_rgb(255, 255, 0);
		break;
	case 5:
		col = make_color_rgb(0, 255, 255);
		break;
	case 6:
		col = make_color_rgb(255, 121, 0);
		break;
	case 7:
		col = make_color_rgb(255, 255, 255);
		break;
	case 8:
		col = make_color_rgb(121, 0, 121);
		break;
	case 9:
		col = make_color_rgb(0, 127, 0);
		break;
	case 10:
		col = make_color_rgb(0, 31, 127);
		break;
	case 11:
		col = make_color_rgb(127, 0, 0);
		break;
	case 12:
		col = make_color_rgb(0, 127, 127);
		break;
	case 13:
		col = make_color_rgb(127, 63, 0);
		break;
	default:
		col = make_color_hsv((173*v.label) % 255, 255, 255);
}

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
	draw_line_width_color(e.tail.x+vec[0]-1, e.tail.y+vec[1]-1, e.head.x-vec[0]-1, e.head.y-vec[1]-1, 4, col, col);
else
	draw_line_width_color(e.tail.x+vec[0]-1+irandom_range(-3,3), e.tail.y+vec[1]-1+irandom_range(-3,3), e.head.x-vec[0]-1+irandom_range(-3,3), e.head.y-vec[1]-1+irandom_range(-3,3), 2, col, col);