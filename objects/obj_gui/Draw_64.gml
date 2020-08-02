/// @desc Write instructions in new room and save delete room.

// Do nothing for rooms with no text
if (room != rm_coloring_triangle_new && room != rm_save_clear)
	exit;

// Set text attributes
draw_set_font(fnt_standard);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// New game room
if (room == rm_coloring_triangle_new)
{
	// Delay hint on click
	if (mouse_check_button_pressed(mb_left))
		alarm[0] = max(alarm[0], 5*room_speed);
	
	// Increase opacity
	if (fade == true)
		alpha += 0.01*(60/room_speed);
	
	// Draw text
	draw_text_color(room_width/2, 100, "Point and click to interact.", c_white, c_white, c_white, c_white, alpha);
}

// Save clear room
if (room == rm_save_clear)
{
	// Decrease opacity
	if (fade == true)
		alpha -= 0.01*(60/room_speed);
	
	// Draw text
	draw_text_color(room_width/2, 100, "Complete the puzzle to delete your save file.", c_white, c_white, c_white, c_white, alpha);
}
