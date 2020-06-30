/// @desc Destroy all graph objects.

// Number of stored graphs
var n = array_length_1d(g);

// Destroy all graphs
for (var i = 0; i < n; i++)
	instance_destroy(g[i], true);

// Clear graph list
g = [];

// Clear selectable object list
global.selectable = [];
