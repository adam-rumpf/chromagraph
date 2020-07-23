/// @desc Draw black screen.

draw_primitive_begin(pr_trianglestrip);
draw_vertex_color(0, 0, c_black, alpha);
draw_vertex_color(room_width, 0, c_black, alpha);
draw_vertex_color(0, room_height, c_black, alpha);
draw_vertex_color(room_width, room_height, c_black, alpha);
draw_primitive_end();
