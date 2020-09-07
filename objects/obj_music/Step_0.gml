/// @desc Set volume and restart song.

// If in menu puzzle room, calculate volume based on number of correct vertices
if (room == rm_menu_puzzle)
{
	var f = scr_fraction_valid_vertices(obj_game.g); // fraction of puzzle completion
	if ((f < 1) && (global.final_complete == false))
	{
		// Immediately change sound while in progress
		vol = f * global.gains[global.music];
		audio_sound_gain(music, vol, 0);
	}
	else
	{
		// Begin fading out otherwise
		vol = global.gains[global.music];
		audio_sound_gain(music, 0, 1000);
	}
	
	exit;
}
else
{
	// Do nothing if in endgame mode
	if ((global.game_complete == true) && (global.final_complete == false))
	{
		audio_sound_gain(music, 0, 4000);
		exit;
	}
}

// If music setting has just changed, change the current song's volume
if (global.gains[global.music] != vol)
{
	vol = global.gains[global.music];
	audio_sound_gain(music, vol, 1000);
}

// Start a new song after a delay if the current one has ended
if (audio_is_playing(music) == false && swap == false)
{
	swap = true;
	alarm[1] = 1*room_speed;
}
