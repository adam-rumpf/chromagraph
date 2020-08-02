/// @desc Destroy graph object.

// Destroy graph (if defined)
if (g != id)
	instance_destroy(g, true);

// Clear graph object ID
g = id;

// Clear selectable object list
global.selectable = [];

// Fade out sounds
audio_sound_gain(rumble, 0, 500);
