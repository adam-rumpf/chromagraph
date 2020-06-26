/// @func scr_adjacent(u, v, dir)
/// @desc Determines whether u is adjacent to v, i.e. whether the edge (u,v) exists.
/// @param {obj_vertex} u First vertex object.
/// @param {obj_vertex} v Second vertex object.
/// @param {bool} dir Determine whether to treat edges as directed (true for directed edges, false for undirected edges).
/// @return {bool} Whether the vertices are adjacent (true if so, false if not).

// Rename arguments
var u, v, dir;
u = argument[0];
v = argument[1];
dir = argument[2];

// Test whether any edges leave u and enter v
var adj = false; // adjacency result
for (var i = 0; i < array_length_1d(u.out_arcs); i++)
{
	if (u.out_arcs[i].head == v)
	{
		adj = true;
		break;
	}
}

// If testing simple edges and no adjacency has been found yet, continue looking
if (dir == false && adj == false)
{
	// Test whether any edges leave v and enter u
	for (var i = 0; i < array_length_1d(v.out_arcs); i++)
	{
		if (v.out_arcs[i].head == u)
		{
			adj = true;
			break;
		}
	}
}

return adj;
