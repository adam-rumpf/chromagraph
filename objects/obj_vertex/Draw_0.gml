/// @desc Draw vertex.

//###
var col = c_black;
switch label
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
draw_circle_color(x, y, 8, col, col, false);
