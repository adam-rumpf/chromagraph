//###

if (array_length_1d(obj_game.g) < 1)
	exit;

var valid = scr_properly_colored(obj_game.g[0]);
if (valid == true)
	show_message("Proper");
else
	show_message("Improper");
