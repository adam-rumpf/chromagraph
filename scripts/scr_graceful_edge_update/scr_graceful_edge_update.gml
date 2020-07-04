/// @func scr_graceful_edge_update(g)
/// @desc Updates edge labels for a graceful tree problem and determines whether the labeling is graceful.
/// @param {obj_graph} g Graph to test.
/// @return {bool} Whether the graph has been gracefully labeled (true if all vertices are labeled and all edge labels are distinct).

// Rename argument
var g = argument[0];

// Calculate all edge labels as difference between vertex labels
for (var i = 0; i < array_length_1d(g.e); i++)
{
	// Get endpoint labels
	var hl = g.e[i].head.label;
	var tl = g.e[i].tail.label;
	
	// Skip edge if either endpoint is unlabeled
	if (hl < 0 || tl < 0)
	{
		g.e[i].label = -1;
		continue;
	}
	
	// Otherwise calculate edge label as difference
	g.e[i].label = abs(hl-tl) - 1;
}

var proper = true;

// Verify that all vertex labels are distinct
for (var i = 0; i < array_length_1d(g.v); i++)
{
	g.v[i].angry = false;
	var vl = g.v[i].label;
	if (vl < 0)
	{
		proper = false;
		continue;
	}
	
	for (var j = 0; j < i; j++)
	{
		var ul = g.v[j].label;
		
		// If both vertices have the same label, mark both as angry
		if (vl == ul)
		{
			proper = false;
			g.v[i].angry = true;
			g.v[j].angry = true;
		}
	}
}

// Verify that all edge labels are distinct
for (var i = 0; i < array_length_1d(g.e); i++)
{
	g.e[i].angry = false;
	var el = g.e[i].label;
	if (el < 0)
	{
		proper = false;
		continue;
	}
	
	for (var j = 0; j < i; j++)
	{
		var fl = g.e[j].label;
		
		// If both edges have the same label, mark both as angry
		if (el == fl)
		{
			proper = false;
			g.e[i].angry = true;
			g.e[j].angry = true;
		}
	}
}

// If all tests have been passed, the labeling is valid
return proper;
