/// @desc Fade overlay in or out.

// Fade in on selection or out otherwise
if (v.selected == true && alpha < 1)
	alpha += 0.1;
else
	alpha -= 0.1;

// Restrict to [0,1]
alpha = clamp(alpha, 0, 1);
