/// @desc Switch song type depending on room.

switch room
{
	// Save delete
	case rm_save_clear:
		music = audio_play_sound(snd_waves_loop, 10, true);
		audio_sound_gain(music, 0, 0);
		audio_sound_gain(music, vol, 4000);
		break;
	
	// Main menu (or puzzle room, if the player clicked too fast)
	default:
		music = audio_play_sound(songs[index], 10, false);
		audio_sound_gain(music, 0, 0);
		audio_sound_gain(music, vol, 0);
		break;
}
