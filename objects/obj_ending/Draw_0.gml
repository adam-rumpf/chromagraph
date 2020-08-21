/// @desc Draw foreground image.

// Set foreground position depending on camera position
var fg = (room_height - 400 + vo) + 70*(room_height - h + vo - pos)/(room_height - h + vo - pos_min);

// Determine subimage for custom animation speed
var si = floor(current_time / 250) % 4;

// Draw foreground
draw_sprite(spr_foreground_plinth, si, 0, fg);
