/// @desc Switch to music after reaching main menu.

if (room == rm_menu)
{
	// Fade out waves
	audio_sound_gain(music, 0, 4000);
	
	// Set alarm to start music
	alarm[0] = 4*room_speed;
}
