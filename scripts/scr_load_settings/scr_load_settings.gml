/// @func scr_load_settings()
/// @desc Loads game settings.

// File name
var settings = "settings.ini";

// Verify that file exists
if (file_exists(settings) == false)
	exit;

// Read settings
ini_open(settings);
global.sound = round(ini_read_real("audio", "sound", 2));
global.music = round(ini_read_real("audio", "music", 2));
ini_close();
