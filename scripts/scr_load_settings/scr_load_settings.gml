/// @func scr_load_settings()
/// @desc Loads game settings.

// File name
var settings = "settings.ini";

// Verify that file exists
if (file_exists(settings) == false)
	exit;

// Read settings
ini_open(settings);
global.sound_on = round(ini_read_real("audio", "sound", true));
global.music_on = round(ini_read_real("audio", "music", true));
ini_close();
