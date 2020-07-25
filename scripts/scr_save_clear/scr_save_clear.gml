/// @func scr_save_clear()
/// @desc Deletes save file and resets game.

//### Call after confirming save clear in the save clear room, and after fading out screen.

// File name
var save = "save.dat";

// Delete save file
if (file_exists(save))
	file_delete(save);

// Restart game
game_restart();
