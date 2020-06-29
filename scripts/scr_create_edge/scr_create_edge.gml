/// @func scr_create_edge(tail, head)
/// @desc Creates an edge object and returns its ID.
/// @param {obj_vertex} tail Tail vertex.
/// @param {obj_vertex} head Head vertex.
/// @return {obj_edge} Created edge object.

// Rename arguments
var tail, head;
tail = argument[0];
head = argument[1];

// Define edge and assign endpoints
var e = instance_create_layer(mean(tail.x,head.x), mean(tail.y,head.y), "Edges", obj_edge);
e.tail = tail;
e.head = head;

// Add self to endpoint edge lists
tail.out_arcs[array_length_1d(tail.out_arcs)] = e;
head.in_arcs[array_length_1d(head.in_arcs)] = e;

// Return edge ID
return e;
