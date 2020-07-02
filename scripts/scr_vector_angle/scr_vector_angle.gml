/// @func scr_vector_angle(u, v)
/// @desc Finds the smallest angle between two vectors.
/// @param {real[]} u First vector.
/// @param {real[]} v Second vector.
/// @return {real} Angle between two vectors (in radians).

// Rename arguments
var u, v;
u = argument[0];
v = argument[1];

// Use the dot product/norm formula
return arccos((u[0]*v[0] + u[1]*v[1])/(sqrt(sqr(u[0]) + sqr(u[1])) * sqrt(sqr(v[0]) + sqr(v[1]))));
