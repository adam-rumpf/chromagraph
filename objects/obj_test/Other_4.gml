//###

if (room == rm_puzzle_coloring)
{
	var vo = [];
	var part;
	var k = 0;
	for (var i = 0; i < 3; i++)
	{
		for (var j = 0; j < 3; j++)
		{
			part[i,j] = k;
			vo[k] = instance_create_layer(0, 0, "Graph", obj_vertex);
			k++;
		}
	}
	eo = scr_partitioned_spanning_tree(part, vo);
}
