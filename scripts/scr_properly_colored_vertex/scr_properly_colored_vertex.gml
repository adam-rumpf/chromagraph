/// @func scr_properly_colored_vertex(v, flag)
/// @desc Determines whether a vertex is a different color from all of its neighbors.
/// @param {obj_vertex} v Vertex to test.
/// @param {bool} flag If true, updates local variables of vertex to indicate its status.
/// @return {bool} Whether the vertex is free of color conflicts.

// Rename arguments
var v, flag;
v = argument[0];
flag = argument[1];

// If the vertex has a negative label, return false
if (v.label < 0)
{
	if (flag == true)
		v.angry = false;
	return false;
}

var proper = true;

// Check all out-neighboring vertices
for (var i = 0; i < array_length_1d(v.out_arcs); i++)
{
	// Get neighbor
	var u = v.out_arcs[i].head;
	
	// If any neighbor has the same label, color is improper
	if (v.label == u.label)
	{
		if (flag == true)
			v.angry = true;
		proper = false;
	}
}

// Check all in-neighboring vertices
for (var i = 0; i < array_length_1d(v.in_arcs); i++)
{
	// Get neighbor
	var u = v.in_arcs[i].tail;
	
	// If any neighbor has the same label, color is improper
	if (v.label == u.label)
	{
		if (flag == true)
			v.angry = true;
		proper = false;
	}
}

// If all tests have been passed, the vertex color is valid
if (flag == true && proper == true)
	v.angry = false;
return proper;
