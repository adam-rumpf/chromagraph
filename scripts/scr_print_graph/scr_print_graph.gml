/// @func scr_print_graph(g)
/// @desc Prints a message containing the vertex and edge list for a graph. For use in debugging.
/// @param {obj_graph} g Graph to print.

// Rename parameter
var g = argument[0];

// Get graph parameters
var n = array_length_1d(g.v); // vertex count
var m = array_length_1d(g.e); // edge count

// Define string to print
var s = "V = {";

// Get all vertex IDs
for (var i = 0; i < n; i++)
{
	s += string(g.v[i].index);
	if (i < n-1)
		s += ", ";
}
s += "}\nE = {";

// Get all edge endpoint IDs
for (var i = 0; i < m; i++)
{
	var u, v;
	u = g.e[i].tail;
	v = g.e[i].head;
	s += "(" + string(u.index) + "," + string(v.index) + ")";
	if (i < m-1)
		s += ", ";
}
s += "}";

// Show message
show_message(s);
