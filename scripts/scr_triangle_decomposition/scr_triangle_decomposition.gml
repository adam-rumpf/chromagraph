/// @func scr_triangle_decomposition(g)
/// @desc Determines whether a graph's color classes define a triangle decomposition (classes form a partition of triangles).
/// @param {obj_graph} g Graph to test.
/// @return {bool} Whether the graph has been decomposed (true if the color classes partition the edge set into triangles).

// Rename argument
var g = argument[0];

// Initially assume that decomposition is proper and all color classes are correct
var proper = true;
var triangular = []; // whether each color class is a triangle
for (var i = 0; i < global.puzzle_limit; i++)
	triangular[i] = true;
for (var i = 0; i < array_length_1d(g.e); i++)
	g.e[i].angry = false;

// Verify that all edges are labeled
for (var i = 0; i < array_length_1d(g.e); i++)
{
	if (g.e[i].label < 0)
		proper = false;
}

// Verify that all color classes are size 0 or 3
for (var i = 0; i < global.puzzle_limit; i++)
{
	if (obj_game.class[i] != 0 && obj_game.class[i] != 3)
	{
		proper = false;
		triangular[i] = false;
	}
}

// Verify that each color class constitutes a triangle
for (var i = 0; i < global.puzzle_limit; i++)
{
	// If class has not been ruled out due to its size, test its shape
	if (obj_game.class[i] == 3)
	{
		if (scr_color_class_triangle(g, i) == false)
		{
			proper = false;
			triangular[i] = false;
		}
	}
	
	// If the class is in error, mark its members as wrong
	if (triangular[i] == false)
	{
		for (var j = 0; j < array_length_1d(g.e); j++)
		{
			if (g.e[j].label == i)
				g.e[j].angry = true;
		}
	}
}

return proper;
