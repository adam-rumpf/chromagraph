/// @func scr_resize_vector(vec, size)
/// @desc Resizes a vector to a given length.
/// @param {real[]} vec Input vector, as an array.
/// @param {real} size Total length of output vector (in pixels).
/// @return {real[]} Resized version of input vector.

// Rename arguments
var vec = argument[0];
var size = argument[1];

// Calculate vector norm
var norm = 0;
for (var i = 0; i < array_length_1d(vec); i++)
	norm += sqr(vec[i]);
norm = sqrt(norm);

// If the norm is 0, just output the input vector
if (norm == 0)
	return vec;

// Rescale each element
var out = vec;
for (var i = 0; i < array_length_1d(out); i++)
	out[i] = (size*vec[i])/norm;

return out;
