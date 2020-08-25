/// @desc Draw a save reminder if the game is new.

// Do nothing if message is invisible
if (msg <= 0)
	exit;

// Decrease opacity if fading
if (fading == true)
	msg -= 0.01*(60/room_speed);

// Set text attributes
draw_set_font(fnt_standard);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Show message
var save = "Progress is saved automatically.";
draw_text_color(obj_camera.w/2, 80, save, c_white, c_white, c_white, c_white, msg);
