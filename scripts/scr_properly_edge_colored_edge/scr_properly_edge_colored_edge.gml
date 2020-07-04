/// @func scr_properly_edge_colored_edge(e, flag)
/// @desc Determines whether an edge is a different color from all of its neighbors.
/// @param {obj_edge} e Edge to test.
/// @param {bool} flag If true, updates local variables of edge to indicate its status.
/// @return {bool} Whether the edge is free of color conflicts.

// Rename arguments
var e, flag;
e = argument[0];
flag = argument[1];

// If the edge has a negative label, return false
if (e.label < 0)
{
	if (flag == true)
		e.angry = false;
	return false;
}

var proper = true;

// Check all edges leaving head
for (var i = 0; i < array_length_1d(e.head.out_arcs); i++)
{
	var f = e.head.out_arcs[i];
	
	// If any neighbor has the same label, color is improper
	if (e.label == f.label)
	{
		if (flag == true)
			e.angry = true;
		proper = false;
	}
}

// Check all edges entering head
for (var i = 0; i < array_length_1d(e.head.in_arcs); i++)
{
	var f = e.head.in_arcs[i];
	
	// Skip self
	if (f == e)
		continue;
	
	// If any neighbor has the same label, color is improper
	if (e.label == f.label)
	{
		if (flag == true)
			e.angry = true;
		proper = false;
	}
}

// Check all edges leaving tail
for (var i = 0; i < array_length_1d(e.tail.out_arcs); i++)
{
	var f = e.tail.out_arcs[i];
	
	// Skip self
	if (f == e)
		continue;
	
	// If any neighbor has the same label, color is improper
	if (e.label == f.label)
	{
		if (flag == true)
			e.angry = true;
		proper = false;
	}
}

// Check all edges entering tail
for (var i = 0; i < array_length_1d(e.tail.in_arcs); i++)
{
	var f = e.tail.in_arcs[i];
	
	// If any neighbor has the same label, color is improper
	if (e.label == f.label)
	{
		if (flag == true)
			e.angry = true;
		proper = false;
	}
}

// If all tests have been passed, the edge color is valid
if (flag == true && proper == true)
	e.angry = false;
return proper;
