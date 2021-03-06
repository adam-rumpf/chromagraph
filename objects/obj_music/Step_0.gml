/// @desc Set volume and restart song.

// If music setting has just changed, change the current song's volume
if (global.gains[global.music] != vol)
{
	vol = global.gains[global.music];
	audio_sound_gain(music, vol, 1000);
}

/*
// Set volume based on global music setting
if (global.music_on == true)
{
	// If the setting has just changed, change the current song's volume
	if (vol == 0)
	{
		audio_sound_gain(music, 0, 0);
		audio_sound_gain(music, 1, 4000);
	}
	
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
*/

// Start a new song after a delay if the current one has ended
if (audio_is_playing(music) == false && swap == false)
{
	swap = true;
	alarm[1] = 1*room_speed;
}
