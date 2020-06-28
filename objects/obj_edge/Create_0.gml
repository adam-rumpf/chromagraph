/// @desc Define edge-level attributes.

// Endpoint vertex object IDs
head = id;
tail = id;

// Label (interpretation depends on puzzle type)
label = -1;

// Weight (interpretation depends on puzzle type)
weight = 1;

// Whether edge is currently selected by cursor
selected = false;

// Edge highlighting object
eh = instance_create_layer(x, y, "Overlays", obj_edge_selection);
eh.e = id;
