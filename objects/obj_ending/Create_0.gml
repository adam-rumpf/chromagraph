/// @desc Set up camera.

// Define viewport size
w = 800;
h = 600;

// Vertical offset to start camera slightly below frame
vo = 120;

// Define viewport position (top edge)
pos = room_height - h + vo;
alarm[0] = 1;//###12*room_speed; // begin moving up after a delay

// Define topmost allowed position
pos_min = 40;

// Activate camera to scroll up after a delay
scrolling = false; // whether to move up
view_enabled = true;
view_visible[0] = true;
camera_set_view_size(view_camera[0], w, h);
camera_set_view_pos(view_camera[0], 0, pos);

// Set overlay opacity
alpha = 0;
fading = false;

// Button position constants
gvspace = 16;
ghspace = 16;
