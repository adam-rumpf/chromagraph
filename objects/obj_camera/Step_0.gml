/// @desc Move camera.

// Ignore movement if mouse is close to GUI menu at top
if (mouse_y < 40)
	exit;

// Move left if mouse is close to left edge
var left = mouse_x - pos;
if (pos > 0 && left <= 40)
	pos = clamp(pos - 0.25*(40 - left), 0, pos_max);

// Move right if mouse is close to right edge
var right = pos + w - mouse_x;
if (pos < pos_max && right <= 40)
	pos = clamp(pos + 0.25*(40 - right), 0, pos_max);

// Move camera to new position
camera_set_view_pos(view_camera[0], pos, 0);
