/// @desc Increase fading speed after initial screens.

if (room != rm_title && room != rm_coloring_triangle_new)
{
	fade_time = 0.5;
	fade_speed = 1/(fade_time*room_speed);
}
