/// @func scr_properly_totally_colored_vertex(v, flag)
/// @desc Determines whether a vertex is a different color from all of its incident edges.
/// @param {obj_vertex} v Vertex to test.
/// @param {bool} flag If true, has the ability to flag the vertex as angry (but not the reverse).
/// @return {bool} Whether the vertex is free of color conflicts.

// Rename arguments
var v, flag;
v = argument[0];
flag = argument[1];

var proper = true;

// Check all outgoing edges
for (var i = 0; i < array_length_1d(v.out_arcs); i++)
{
	// Get edge
	var e = v.out_arcs[i];
	
	// If any incident edge has the same label, color is improper
	if (v.label == e.label)
	{
		if (flag == true)
			v.angry = true;
		proper = false;
	}
}

// Check all incoming edges
for (var i = 0; i < array_length_1d(v.in_arcs); i++)
{
	// Get edge
	var e = v.in_arcs[i];
	
	// If any incident edge has the same label, color is improper
	if (v.label == e.label)
	{
		if (flag == true)
			v.angry = true;
		proper = false;
	}
}

return proper;
