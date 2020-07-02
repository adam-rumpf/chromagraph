/// @func scr_vector_distance(u, v)
/// @desc Finds the distance between two vectors.
/// @param {real[]} u First vector.
/// @param {real[]} v Second vector.
/// @return {real} Distance between two vectors (in pixels).

// Rename arguments
var u, v;
u = argument[0];
v = argument[1];

// Calculate Euclidean distance
return sqrt(sqr(u[0]-v[0]) + sqr(u[1]-v[1]));
