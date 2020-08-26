/// @func scr_play_sound_pitch(sound, priority, label)
/// @desc Plays a specified sound with a pitch modifier based on a specific coloring label.
/// @param {sound} sound Sound resource to play.
/// @param {int} priority Priority level of sound (1-100).
/// @param {int} label Label of object emitting sound (should correspond to a vertex or edge label).

// Rename arguments
var s, p, lab;
s = argument[0];
p = argument[1];
lab = argument[2];

// Calculate pitch multiplier
var pit = 0.6 + 0.025*lab;

// Play sound
var snd = audio_play_sound(s, p, false);
audio_sound_gain(snd, global.gains[global.sound], 0);
audio_sound_pitch(snd, pit);
