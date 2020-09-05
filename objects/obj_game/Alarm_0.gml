/// @desc End screen flash and create button.

// Alternate procedure for save deletion room
if (room == rm_save_clear)
{
	scr_save_clear();
	exit;
}

// Alternate procedure for main menu puzzle
if (room == rm_menu_puzzle)
{
	//###
	global.final_complete = true; // game is entirely complete
	scr_save_game(); // save progress
	exit;
}

// Play success sound
var chime = audio_play_sound(snd_chime, 90, false);
audio_sound_gain(chime, global.gains[global.sound], 0);

// Create "next" button
var next = instance_create_layer(room_width-24, room_height/2, "Overlays", obj_gui_next);
next.xx = room_width-24;
next.yy = room_height/2;

// End flash
obj_screen_flash.fading = false;
