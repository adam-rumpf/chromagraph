/// @desc Alter self if activated.

// Quit if not activated
if (activated == false)
	exit;

// Increment color, wrapping around if limit is reached
label++;
if (label >= global.puzzle_limit)
	label = -1;
		
// Play a sound
scr_play_sound_pitch(snd_breath, 50, label);
		
// Set color (overwrite black color for blank labels)
if (label < 0)
	image_blend = c_white;
else
	image_blend = scr_pallette(label, 0.5);
		
// Prompt a global solution test
global.puzzle_solved = scr_properly_colored(obj_game.g);

// Deactivate self
activated = false;
