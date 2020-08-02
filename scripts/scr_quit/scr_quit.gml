/// @func scr_quit()
/// @desc Perform final saves and quit game.

// Save settings
scr_save_settings();

// Save progress
scr_save_game();

// Close game
game_end();
