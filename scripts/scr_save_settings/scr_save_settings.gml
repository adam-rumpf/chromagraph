/// @func scr_save_settings()
/// @desc Saves game settings.

// File name
var settings = "settings.ini";

// Reset file
if (file_exists(settings))
	file_delete(settings);

// Save settings
ini_open(settings);
ini_write_real("audio", "sound", global.sound_on);
ini_write_real("audio", "music", global.music_on);
ini_close();
