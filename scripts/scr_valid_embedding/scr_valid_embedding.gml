/// @func scr_valid_embedding(g, vdist, edist)
/// @desc Determines whether a graph embedding is valid by determining whether it is relatively free of excessive overlap.
/// @param {obj_graph} g Graph to test (results based on coordinates of vertices and edges).
/// @param {real} vdist Minimum allowable distance between vertices (in pixels).
/// @param {real} edist Minimum allowable distance between a vertex and a nonadjacent edge (in pixels).
/// @return {bool} Returns true if the embedding satisfies all specified limits, and false otherwise.

//### We also need tests to see whether any edges overlap too much, or if any vertices overlap edges by too much.

// Rename parameters
var g, vdist, edist;
g = argument[0];
vdist = argument[1];
edist = argument[2];

// Determine that all vertex pairs are sufficiently far apart
for (var i = 0; i < array_length_1d(g.v); i++)
{
	for (var j = 0; j < i; j++)
	{
		// Get vertices
		var u, v;
		u = g.v[i];
		v = g.v[j];
		
		// Get pairwise distance
		var dist = scr_vector_distance([u.x, u.y], [v.x, v.y]);
		
		// If distance is too small, the embedding is invalid
		if (dist < vdist)
			return false;
	}
}

// If all tests have been passed, the embedding is valid
return true;
