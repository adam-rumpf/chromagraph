/// @desc Start a new song.

swap = false;

// End current song
audio_stop_sound(music);

// Increment song index
index = (index+1) % array_length_1d(songs);
	
// Begin new song
music = audio_play_sound(songs[index], 10, false);
audio_sound_gain(music, vol, 0);
