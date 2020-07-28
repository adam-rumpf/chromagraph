/// @func scr_graph_knight_grid(m, n)
/// @desc Generates the m x n knight grid graph (diagraming a knight's moves in chess).
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
		// WSW
		if (j >= 2 && i < m-1)
		{
			adj[num] = [scr_grid_index(m, n, i, j), scr_grid_index(m, n, i+1, j-2)];
			num++;
		}
		
		// SSW
		if (j >= 1 && i < m-2)
		{
			adj[num] = [scr_grid_index(m, n, i, j), scr_grid_index(m, n, i+2, j-1)];
			num++;
		}
		
		// SSE
		if (j < n-1 && i < m-2)
		{
			adj[num] = [scr_grid_index(m, n, i, j), scr_grid_index(m, n, i+2, j+1)];
			num++;
		}
		
		// ESE
		if (j < n-2 && i < m-1)
		{
			adj[num] = [scr_grid_index(m, n, i, j), scr_grid_index(m, n, i+1, j+2)];
			num++;
		}
	}
}

// Define graph
return scr_create_graph_list(coords, adj);
