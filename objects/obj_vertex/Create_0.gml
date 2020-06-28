/// @desc Define vertex-level attributes.

// Index within graph's vertex list
index = -1;

// Incident arc sets (for simple graphs, both sets are identical)
out_arcs = [];
in_arcs = [];

// Label (interpretation depends on puzzle type)
label = -1;

// Whether vertex is currently selected by cursor
selected = false;

// Vertex highlighting object
vh = instance_create_layer(x, y, "Overlays", obj_vertex_selection);
vh.v = id;
