/// @desc Set volume level and start to play wave sound.

// Set internal attributes
vol = global.gains[global.music]; // sound volume (0 for silent, 1 for full)
music = id; // current music ID
songs = [mus_wet_riffs, mus_babylon]; // list of all songs
index = irandom_range(0, array_length_1d(songs)-1); // index of current song
prev = -1; // previous room (for use in determining certain types of change)
swap = false; // whether to swap songs

// Begin playing wave sounds
music = audio_play_sound(snd_waves_loop, 10, true);
audio_sound_gain(music, 0, 0);
audio_sound_gain(music, vol, 5000);
