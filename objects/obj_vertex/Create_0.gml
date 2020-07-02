/// @desc Define vertex-level attributes.

// Resize sprite
image_xscale = 2;
image_yscale = 2;

// Index within graph's vertex list
index = -1;

// Incident arc sets (for simple graphs, both sets are identical)
out_arcs = [];
in_arcs = [];

// Label (interpretation depends on puzzle type)
label = -1;

// Whether vertex is currently selected or activated by cursor
selected = false;
activated = false;

// Whether the vertex should visually indicate a problem
angry = false;

// Vertex coloring object
vc = instance_create_layer(x, y, "Vertex_Effects", obj_vertex_color);
vc.v = id;

// Vertex highlighting object
vh = instance_create_layer(x, y, "Overlays", obj_vertex_selection);
vh.v = id;
