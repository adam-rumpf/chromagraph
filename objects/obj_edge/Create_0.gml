/// @desc Define edge-level attributes.

// Endpoint vertex object IDs
head = id;
tail = id;

// Label (interpretation depends on puzzle type)
label = -1;

// Weight (interpretation depends on puzzle type)
weight = 1;

// Whether vertex is currently selected or activated by cursor
selected = false;
activated = false;

// Whether the edge should visually indicate a problem
angry = false;

// Edge coloring object
ec = []; // list of edge coloring objects
switch global.puzzle
{
	// Dominating Set
	case 6:
		ec[0] = instance_create_layer(x, y, "Edge_Effects", obj_edge_color_temp);
		ec[0].label = 0;
		break;
	
	// Fall Coloring
	case 7:
		for (var i = 0; i < global.puzzle_limit; i++)
		{
			ec[i] = instance_create_layer(x, y, "Edge_Effects", obj_edge_color_temp);
			ec[i].label = i;
		}
		break;
	
	// Standard coloring object
	default:
		ec[0] = instance_create_layer(x, y, "Edge_Effects", obj_edge_color);
}
for (var i = 0; i < array_length_1d(ec); i++)
	ec[i].e = id;

// Edge highlighting object
eh = instance_create_layer(x, y, "Overlays", obj_edge_selection);
eh.e = id;
