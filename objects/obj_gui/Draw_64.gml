/// @desc Write instructions in save delete room.

if (room != rm_save_clear)
	exit;

// Decrease opacity
if (fading == true)
	alpha -= 0.025*(60/room_speed);

// Set text attributes
draw_set_font(fnt_standard);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw text
draw_text_color(room_width/2, 100, "Complete the puzzle to delete your save file.", c_white, c_white, c_white, c_white, alpha);
