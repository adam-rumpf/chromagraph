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

// Set smoke emitter speed
var smspeed = 0;
if (angry == true)
	smspeed = part_speed;
part_emitter_stream(particle_system, emit_smoke, type_smoke, smspeed);

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

// Change particle streams
var rspeed, bspeed, gspeed; // emitter speeds for each color
rspeed = 0;
bspeed = 0;
gspeed = 0;

// Turn on only the active particle
switch label
{
	case 0: rspeed = part_speed; break;
	case 1: bspeed = part_speed; break;
	case 2: gspeed = part_speed; break;
}

// Set all emitter speeds
for (var i = 0; i < array_length_1d(emits_red); i++)
	part_emitter_stream(particle_system, emits_red[i], types_red[i], rspeed);
for (var i = 0; i < array_length_1d(emits_blue); i++)
	part_emitter_stream(particle_system, emits_blue[i], types_blue[i], bspeed);
for (var i = 0; i < array_length_1d(emits_green); i++)
	part_emitter_stream(particle_system, emits_green[i], types_green[i], gspeed);

// Deactivate self
activated = false;
