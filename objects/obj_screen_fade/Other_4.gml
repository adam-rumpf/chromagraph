/// @desc Set an alarm to fade back in.

alarm[0] = 1*room_speed;

// Set fade-in time depending on room
if (room != rm_title && room != rm_coloring_triangle_new && room != rm_ending)
	fade_time = 0.75;
else
	fade_time = 3;

// Set fade speed based on fade time
fade_speed = 1/(fade_time*room_speed);
