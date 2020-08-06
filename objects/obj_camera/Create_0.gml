/// @desc Set up camera.

// Define viewport size
w = 800;
h = 600;

// Define viewport position (left edge)
pos = 0;
alarm[0] = 1; // snap to left after room begins

// Define rightmost allowed position
pos_max = room_width - w - 1;

// Activate camera to scroll over menu screen
view_enabled = true;
view_visible[0] = true;
camera_set_view_size(view_camera[0], w, h);
camera_set_view_pos(view_camera[0], pos, 0);
