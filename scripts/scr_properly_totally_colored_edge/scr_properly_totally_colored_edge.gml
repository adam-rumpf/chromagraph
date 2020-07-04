/// @func scr_properly_totally_colored_edge(e, flag)
/// @desc Determines whether an edge is a different color from all of its incident vertices.
/// @param {obj_edge} e Edge to test.
/// @param {bool} flag If true, has the ability to flag the edge as angry (but not the reverse).
/// @return {bool} Whether the edge is free of color conflicts.

// Rename arguments
var e, flag;
e = argument[0];
flag = argument[1];

var proper = true;

// Check head and tail
if (e.label == e.head.label || e.label == e.tail.label)
{
	if (flag == true)
		e.angry = true;
	proper = false;
}

return proper;
