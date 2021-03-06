/// @desc Listen for puzzle to be solved.

// Skip if not in a puzzle room
if (room == rm_title || room == rm_menu || room == rm_credits || room == rm_ending)
	exit;

// Decide whether to play an error sound
if (global.sound > 0)
{
	// Play sound if there is an error, and otherwise cancel sound
	if (scr_graph_errors(g) == true)
		audio_sound_gain(rumble, global.gains[global.sound], 500);
	else
		audio_sound_gain(rumble, 0, 500);
}
else
	audio_sound_gain(rumble, 0, 500);

// Check whether puzzle has just been solved for the first time
if (global.puzzle_solved == true && solved == false)
{
	// Play a sound effect on save delete
	if (room == rm_save_clear)
	{
		var waves = audio_play_sound(snd_waves_in, 90, false);
		audio_sound_gain(waves, 0, 0);
		audio_sound_gain(waves, global.gains[global.sound], 1000);
	}
	
	// Begin screen flash and set timer to create button
	obj_screen_flash.fading = true;
	alarm[0] = room_speed*obj_screen_flash.fade_time;
	
	// Set solve state
	solved = true;
	
	// Update internal puzzle progress variables (it returns true if we've unlocked a new branch)
	var unlock = scr_puzzle_save(room, 2);
	
	// Update next room (if there is one)
	next = scr_puzzle_next(room);
	if (next != rm_menu)
		scr_puzzle_save(next, 1);
	
	// Override next room to go to main menu if we've just unlocked something
	if (unlock == true)
		next = rm_menu;
	
	// Save game
	scr_save_game();
	
	// Check whether the game is complete
	if (global.game_complete == false)
	{
		global.game_complete = scr_game_complete();
		
		// Go to ending room if we've just completed the game
		if (global.game_complete == true)
			next = rm_ending;
	}
}
