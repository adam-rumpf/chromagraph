/// @desc Initialize vertex and edge sets.

// Empty sets
v = [];
e = [];

//### Test network
var v1, v2, e1;
v1 = instance_create_layer(100, 200, "Graph", obj_vertex);
v2 = instance_create_layer(200, 250, "Graph", obj_vertex);
e1 = scr_create_edge(v1, v2);
v = [v1, v2];
e = [e1];
