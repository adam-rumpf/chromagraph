/// @desc Listen for puzzle to be solved.

// Skip if not in a puzzle room
if (room == rm_title || room == rm_menu || room == rm_credits || room == rm_ending)
	exit;

// Decide whether to play an error sound
if (global.sound_on == true)
{
	// Play sound if there is an error, and otherwise cancel sound
	if (scr_graph_errors(g) == true)
		audio_sound_gain(rumble, 1, 500);
	else
		audio_sound_gain(rumble, 0, 500);
}
else
	audio_sound_gain(rumble, 0, 500);

// Check whether puzzle has just been solved for the first time
if (global.puzzle_solved == true && solved == false)
{
	// Play a sound effect on save delete
	if (room == rm_save_clear && global.sound_on == true)
		audio_play_sound(snd_waves_in, 90, false);
	
	// Begin screen flash and set timer to create button
	obj_screen_flash.fading = true;
	alarm[0] = room_speed*obj_screen_flash.fade_time;
	
	// Set solve state
	solved = true;
	
	// Update internal puzzle progress variables
	scr_puzzle_save(room, 2);
	
	// Update next room (if there is one)
	var next = scr_puzzle_next(room);
	if (next != rm_menu)
		scr_puzzle_save(next, 1);
	
	// Save game
	scr_save_game();
}
