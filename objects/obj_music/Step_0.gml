/// @desc Set volume and restart song.

// Set volume based on global music setting
if (global.music_on == true)
{
	// If the setting has just changed, change the current song's volume
	if (vol == 0)
		audio_sound_gain(music, 1, 1000);
	
	// Turn volume to full
	vol = 1;
}
else
{
	// If the setting has just changed, change the current song's volume
	if (vol == 1)
		audio_sound_gain(music, 0, 1000);
	
	// Turn volume off
	vol = 0;
}

// Start a new song if the current one has ended
if (audio_is_playing(music) == false)
{
	// Increment song index
	index = (index+1) % array_length_1d(songs);
	
	// Begin new song
	music = audio_play_sound(songs[index], 10, false);
	audio_sound_gain(music, vol, 0);
}
