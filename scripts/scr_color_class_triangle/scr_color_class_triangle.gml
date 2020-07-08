/// @func scr_color_class_triangle(g, lab)
/// @desc Determines whether a color class for a graph consists entirely of a triangle.
/// @param {obj_graph} g Graph to test.
/// @param {int} lab Index of color class.
/// @return {bool} Whether the color class is a triangle.

// Rename arguments
var g, lab;
var g = argument[0];
lab = argument[1];

// Make a list of edges with the specified color
var el = [];
var num = 0; // number of edges found
for (var i = 0; i < array_length_1d(g.e); i++)
{
	if (g.e[i].label == lab)
	{
		el[num] = g.e[i];
		num++;
	}
}

// Double-check the class's size
if (num != 3)
	return false;

// The set of edges is a triangle if and only if each edge's endpoint occurs exactly once among the other two's endpoints
for (var i = 0; i < 3; i++)
{
	// Get other two indices
	var j = (i + 1) % 3;
	var k = (i + 2) % 3;
	
	// Assemble array of other edge's endpoints
	var ends = [el[j].tail, el[j].head, el[k].tail, el[k].head];
	
	// Verify that current edge's endpoints each occur exactly once on this list
	if (scr_array_count(ends, el[i].head) != 1 || scr_array_count(ends, el[i].tail) != 1)
		return false;
}

// If all tests have been passed, the set is a triangle
return true;
