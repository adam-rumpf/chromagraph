/// @func scr_graph_p2()
/// @desc Generates the path graph of length 2.
/// @return {obj_graph} Graph object.

// Define vertices
var v = [];
v[0] = instance_create_layer(room_width/3, 2*room_height/3, "Vertices", obj_vertex);
v[1] = instance_create_layer(room_width/2, room_height/3, "Vertices", obj_vertex);
v[2] = instance_create_layer(2*room_width/3, 2*room_height/3, "Vertices", obj_vertex);

// Define edges
var e = [];
e[0] = scr_create_edge(v[0], v[1]);
e[1] = scr_create_edge(v[1], v[2]);

// Define graph
return scr_create_graph(v, e);
