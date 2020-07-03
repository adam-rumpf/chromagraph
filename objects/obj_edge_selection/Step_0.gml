/// @desc Fade overlay in or out.

// Fade in on selection or out otherwise
if (e.selected == true && alpha < 0.9)
	alpha += 0.1;
else
	alpha -= 0.1;

// Restrict to [0,0.9]
alpha = clamp(alpha, 0, 0.9);
