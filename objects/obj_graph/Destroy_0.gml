/// @desc Destroy all associated vertices and edges on death.

// Destroy all vertices
for (var i = 0; i < array_length_1d(v); i++)
	instance_destroy(v[i]);

// Destroy all edges
for (var i = 0; i < array_length_1d(e); i++)
	instance_destroy(e[i]);
