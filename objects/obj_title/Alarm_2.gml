/// @desc Go to main menu.

// Fade back in
obj_screen_fade.fading = false;

// Go to either new game room or main menu
if (global.new_game == true)
	room_goto(rm_coloring_triangle_new);
else
	room_goto(rm_menu);
