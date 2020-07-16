/// @func scr_vertex_rebase(g)
/// @desc Repositions all vertex overlay and edge objects to vertex's new position.
/// @param {obj_graph} g Graph to update.

// Rename argument
var g = argument[0];

// Process each vertex
for (var i = 0; i < array_length_1d(g.v); i++)
{
	// Update vertex coloring object
	g.v[i].vc.x = g.v[i].x;
	g.v[i].vc.y = g.v[i].y;
	
	// Update vertex highlighting object
	g.v[i].vh.x = g.v[i].x;
	g.v[i].vh.y = g.v[i].y;
}

// Process each edge
for (var i = 0; i < array_length_1d(g.e); i++)
{
	// Find mean coordinates of endpoints
	var xx, yy;
	xx = mean(g.e[i].head.x, g.e[i].tail.x);
	yy = mean(g.e[i].head.y, g.e[i].tail.y);
	
	// Update edge centroid
	g.e[i].x = xx;
	g.e[i].y = yy;
	
	// Update edge coloring object centroids
	for (var j = 0; j < array_length_1d(g.e[i].ec); j++)
	{
		g.e[i].ec[j].x = xx;
		g.e[i].ec[j].y = yy;
	}
	
	// Update edge highlight object centroid
	g.e[i].eh.x = xx;
	g.e[i].eh.y = yy;
}
