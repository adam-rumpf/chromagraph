//###

if (room == rm_puzzle_coloring)
{
	var part;
	var k = 0;
	for (var i = 0; i < 3; i++)
	{
		for (var j = 0; j < 3; j++)
		{
			part[i,j] = k;
			k++;
		}
	}
	eo = scr_partitioned_spanning_tree(part, 0);
}
