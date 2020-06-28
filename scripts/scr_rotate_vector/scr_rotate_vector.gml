/// @func scr_rotate_vector(vec, deg)
/// @desc Rotates a given vector by a given number of degrees.
/// @param {real[]} vec Input vector, as an array.
/// @param {real} deg Rotation angle, in counterclockwise degrees.
/// @return {real[]} Rotated input vector.

// Rename arguments
var vec, deg;
vec = argument[0];
deg = -(pi*argument[1])/180; // convert angle to radians and account for inverted y-axis

// Apply rotation linear transformation to vector
var out = vec;
out[0] = vec[0]*cos(deg) - vec[1]*sin(deg);
out[1] = vec[0]*sin(deg) + vec[1]*cos(deg);

return out;
