/// @desc Switch song type depending on room.

// End current song
audio_stop_sound(music);

switch room
{
	// Save delete and ending
	case rm_save_clear:
	case rm_ending:
		
		// Do nothing if in endgame mode
		if ((global.game_complete == true) && (global.final_complete == false))
			exit;
		
		music = audio_play_sound(snd_waves_loop, 10, true);
		audio_sound_gain(music, 0, 0);
		audio_sound_gain(music, vol, 4000);
		break;
	
	// Menu puzzle
	case rm_menu_puzzle:
		music = audio_play_sound(snd_drum, 10, true);
		audio_sound_gain(music, 0, 0); // gain will increase according to number of non-angry vertices
		break;
	
	// Main menu (or puzzle room, if the player clicked too fast)
	default:
		
		// Do nothing if in endgame mode
		if ((global.game_complete == true) && (global.final_complete == false))
			exit;
		
		music = audio_play_sound(songs[index], 10, false);
		audio_sound_gain(music, 0, 0);
		audio_sound_gain(music, vol, 0);
		break;
}
