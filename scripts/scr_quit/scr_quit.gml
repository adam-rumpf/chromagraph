/// @func scr_quit()
/// @desc Perform final saves and quit game.

//### Confirm quit.

// Save settings
scr_save_settings();

game_end();
