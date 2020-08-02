/// @desc Switch music mode depending on room transition.

// Change when moving between main menu and save delete room
if ((prev == rm_title && room != rm_coloring_triangle_new) || prev == rm_coloring_triangle_new || prev == rm_save_clear || room == rm_save_clear)
{
	// Fade out current song and set timer to switch mode
	audio_sound_gain(music, 0, 4000);
	alarm[0] = 4*room_speed;
}
