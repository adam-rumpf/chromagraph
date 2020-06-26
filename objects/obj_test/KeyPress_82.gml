//###

// Delete existing graph and generate a new one
if (room == rm_puzzle_coloring)
{
	if (instance_exists(g))
		instance_destroy(g);
	g = scr_random_coloring_puzzle(10, 18, 3, 3, true);
}
