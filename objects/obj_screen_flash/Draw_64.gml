/// @desc Draw over screen.

draw_primitive_begin(pr_trianglestrip);
draw_vertex_color(0, 0, col, alpha);
draw_vertex_color(room_width, 0, col, alpha);
draw_vertex_color(0, room_height, col, alpha);
draw_vertex_color(room_width, room_height, col, alpha);
draw_primitive_end();
