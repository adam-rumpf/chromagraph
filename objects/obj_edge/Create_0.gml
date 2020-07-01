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
ec = instance_create_layer(x, y, "Edge_Effects", obj_edge_color);
ec.e = id;

// Edge highlighting object
eh = instance_create_layer(x, y, "Overlays", obj_edge_selection);
eh.e = id;
