/// @desc Switch music mode depending on room transition.

// Change when moving between main menu and save delete room
if ((prev == rm_title && room != rm_coloring_triangle_new) || prev == rm_coloring_triangle_new || prev == rm_save_clear || room == rm_save_clear)
{
	// Fade out current song and set timer to switch mode
	audio_sound_gain(music, 0, 4000);
	alarm[0] = 4*room_speed;
}

// Same for ending room and menu puzzle room
if (prev == rm_ending || room == rm_ending || prev == rm_menu_puzzle || room == rm_menu_puzzle)
{
	// Fade out current song and set timer to switch mode
	audio_sound_gain(music, 0, 4000);
	alarm[0] = 4*room_speed;
}
