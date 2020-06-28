//###

// Delete existing graph and generate a new one
if (room == rm_puzzle_coloring)
{
	if (instance_exists(g))
		instance_destroy(g);
	//###g = scr_random_coloring_puzzle(10, 18, 3, 3, true);
	g = scr_graph_p2();
	g.e[0].selected = true;
	g.v[2].selected = true;
	
	for (var i = 0; i < array_length_1d(g.v); i++)
	{
		g.v[i].x += irandom_range(-20, 20);
		g.v[i].y += irandom_range(-20, 20);
	}
}
