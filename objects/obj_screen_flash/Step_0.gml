/// @desc Update opacity.

// Decide whether to fade in or out
var multi = -1;
if (fading == true)
	multi = 1;

// Adjust opacity
alpha = clamp(alpha+multi*fade_speed, 0, 1);
