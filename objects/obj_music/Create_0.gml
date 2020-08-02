/// @desc Set volume level and start to play wave sound.

// Set internal attributes
vol = 1; // sound volume (0 for silent, 1 for full)
music = id; // current music ID
songs = [mus_wet_riffs, mus_babylon]; // list of all songs
index = 0; // index of current song
prev = -1; // previous room (for use in determining certain types of change)

// If music is turned off, set volume to 0
if (global.music_on == false)
	vol = 0;

// Begin playing wave sounds
music = audio_play_sound(snd_waves_loop, 10, true);
audio_sound_gain(music, 0, 0);
audio_sound_gain(music, vol, 5000);
