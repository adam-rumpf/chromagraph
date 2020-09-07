/// @desc Draw rays of light.

// If no vertex has been linked, do nothing
if (v == id)
	exit;

// If vertex is unlabeled, do nothing
if (v.label < 0)
	exit;

// Randomly vary shine (more if angry)
if (v.angry == false)
	alpha = clamp(alpha + random_range(-0.05, 0.05), 0.825, 0.975);
else
	alpha = clamp(alpha + random_range(-0.1, 0.1), 0.2, 0.5);

// Randomly vary base position (more if angry)
var xx, yy, rad;
rad = 0;
if (v.angry == true)
	rad = 1;
xx = x + random_range(-rad, rad);
yy = y + random_range(-rad, rad);

// Set label-dependent color
var col = scr_pallette(v.label, 1);

// Draw flare sprites (depending on label number)
switch v.label
{
	// Red, 1
	case 0:
		draw_sprite_ext(spr_oval_flare, 0, xx, yy, 1, 1, 0, col, alpha);
		break;
	
	// Blue, 2
	case 1:
		draw_sprite_ext(spr_oval_flare, 0, xx, yy, 0.85, 0.85, 45, col, alpha);
		draw_sprite_ext(spr_oval_flare, 0, xx, yy, 0.85, 0.85, 135, col, alpha);
		break;
	
	// Green, 3
	case 2:
		draw_sprite_ext(spr_oval_flare, 0, xx, yy, 0.7, 0.7, 0, col, alpha);
		draw_sprite_ext(spr_oval_flare, 0, xx, yy, 0.7, 0.7, 60, col, alpha);
		draw_sprite_ext(spr_oval_flare, 0, xx, yy, 0.7, 0.7, 120, col, alpha);
		break;
}
