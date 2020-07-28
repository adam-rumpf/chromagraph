/// @func scr_graph_grid(m, n)
/// @desc Generates the m x n grid graph.
/// @param {int} m Number of rows of vertices.
/// @param {int} n Number of columns of vertices.
/// @return {obj_graph} Graph object.

// Rename arguments
var m, n;
m = argument[0];
n = argument[1];

// Define vertex positions
var unit = min(room_height/(m+2), room_width/(n+2));
var xbase = room_width/2 - (n*unit)/2;
var ybase = room_height/2 - (m*unit)/2;
var coords = [];
var num = 0;
for (var i = 0; i < m; i++)
{
	for (var j = 0; j < n; j++)
	{
		coords[num] = [xbase + unit*j, ybase + unit*i];
		num++;
	}
}

// Define pairs of adjacent vertices
var adj = [];
num = 0;
for (var i = 0; i < m; i++)
{
	for (var j = 0; j < n; j++)
	{
		// Horizontal edge, left-to-right
		if (j < n-1)
		{
			adj[num] = [scr_grid_index(m, n, i, j), scr_grid_index(m, n, i, j+1)];
			num++;
		}
		
		// Vertical edge, up-to-down
		if (i < m-1)
		{
			adj[num] = [scr_grid_index(m, n, i, j), scr_grid_index(m, n, i+1, j)];
			num++;
		}
	}
}

// Define graph
return scr_create_graph_list(coords, adj);
