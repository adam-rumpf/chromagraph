//###

draw_text_color(50, 50, "Press [N] to go to test room.", c_white, c_white, c_white, c_white, 1);
draw_text_color(50, 100, "Press [G] to spawn a test graph.", c_white, c_white, c_white, c_white, 1);
draw_text_color(50, 150, "Press [R] to spawn a random coloring graph.", c_white, c_white, c_white, c_white, 1);
draw_text_color(50, 200, "Press [T] to verify the coloring.", c_white, c_white, c_white, c_white, 1);
draw_text_color(50, 250, "Press [Esc] to restart the game.", c_white, c_white, c_white, c_white, 1);

//###
/*draw_text_color(200, 375, "length1 = " + string(array_length_2d(part, 0)), c_white, c_white, c_white, c_white, 1);
for (var i = 0; i < array_height_2d(part); i++)
{
	for (var j = 0; j < array_length_2d(part, i); j++)
		draw_text_color(50 + 50*j, 400 + 50*i, string(part[i,j]), c_white, c_white, c_white, c_white, 1);
}*/
/*if (room == rm_puzzle_coloring)
	draw_text_color(200, 375, string(eo), c_white, c_white, c_white, c_white, 1);*/
/*if (room == rm_puzzle_coloring)
{
	for (var i = 0; i < array_length_1d(g.v); i++)
	{
		draw_text_color(50 + 50*i, 400, string(scr_vertex_degree(g.v[i], 0)), c_white, c_white, c_white, c_white, 1);
	}
}*/

/*var vec = [mouse_x - room_width/2, mouse_y - room_height/2];
draw_line(room_width/2, room_height/2, room_width/2 + vec[0], room_height/2 + vec[1]);
draw_line(0, 0, vec[0], vec[1]);
vec = scr_rotate_vector(scr_resize_vector(vec, 40), 20);
draw_line(room_width/2, room_height/2, room_width/2 + vec[0], room_height/2 + vec[1]);
draw_line(0, 0, vec[0], vec[1]);*/
