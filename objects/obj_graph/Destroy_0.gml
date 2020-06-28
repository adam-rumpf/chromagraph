/// @desc Destroy all associated vertices and edges on death.

// Destroy all vertices (which handle their own display objects)
for (var i = 0; i < array_length_1d(v); i++)
	instance_destroy(v[i], true);

// Destroy all edges (which handle their own display objects)
for (var i = 0; i < array_length_1d(e); i++)
	instance_destroy(e[i], true);
