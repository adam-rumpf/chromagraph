/// @desc Draw vertex coloring.

if (v.label < 0)
	exit;

//###
var col = c_black;
switch v.label
{
	case 0:
		col = c_red;
		break;
	case 1:
		col = c_blue;
		break;
	case 2:
		col = c_green;
		break;
	case 3:
		col = c_purple;
		break;
	case 4:
		col = c_aqua;
		break;
}
if (col != c_black)
{
	//###
	if (v.angry == false)
		draw_circle_color(v.x, v.y, 12, col, col, false);
	else
		draw_circle_color(v.x + irandom_range(-3, 3), v.y + irandom_range(-3, 3), 12, col, col, false);
}
