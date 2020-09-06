/// @desc Alter self if selected or activated.

// Tinting multiplier
var multi;
if (selected == true)
	multi = 1.2;
else
{
	multi = 0.75;
	if (label == 1)
		multi = 0.8; // slightly brighten blue
}

// Set color (overwrite black color for blank labels)
if (label < 0)
{
	if (multi > 1)
		image_blend = col_light;
	else
		image_blend = col_gray;
}
else
	image_blend = scr_pallette(label, multi);

// Quit if not activated
if (activated == false)
	exit;

// Increment color, wrapping around if limit is reached
label++;
if (label >= global.puzzle_limit)
	label = -1;
		
// Play a sound
scr_play_sound_pitch(snd_breath, 50, label);
		
// Prompt a global solution test
global.puzzle_solved = scr_properly_colored(obj_game.g);

// Deactivate self
activated = false;
