/// @desc Define vertex-level attributes.

// Set image attributes
image_speed = 0;
image_xscale = 0.5;
image_yscale = 0.5;

// Index within graph's vertex list
index = -1;

// Incident arc sets
out_arcs = [];
in_arcs = [];

// Label (interpretation depends on puzzle type)
label = -1;

// Whether vertex is currently selected or activated by cursor
selected = false;
activated = false;

// Whether the vertex should visually indicate a problem
angry = false;

// Define standard colors
col_gray = make_color_rgb(127, 127, 127);
col_light = c_white;
