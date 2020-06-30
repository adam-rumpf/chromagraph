/// @desc Decide which object on screen is being selected.

// If no selectable objects are present, do nothing
if (array_length_1d(global.selectable) < 1)
	exit;

// Find nearest selectable object (within a cutoff of distance 40)
var dist = infinity; // smallest known distance
var nearest = -1; // list index of nearest object
for (var i = 0; i < array_length_1d(global.selectable); i++)
{
	var dist_new = scr_distance_to_cursor(global.selectable[i]);
	if (dist_new < min(dist, 40)) //### Decide on cutoff distance
	{
		nearest = i;
		dist = dist_new;
	}
}

// Select only the nearest object
for (var i = 0; i < array_length_1d(global.selectable); i++)
{
	if (i == nearest)
		global.selectable[i].selected = true;
	else
		global.selectable[i].selected = false;
}
