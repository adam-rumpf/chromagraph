/// @func scr_create_edge(tail, head)
/// @desc Creates an edge object and returns its ID.
/// @param {int} tail Tail vertex ID.
/// @param {int} head Head vertex ID.

// Rename arguments
var tail, head;
tail = argument[0];
head = argument[1];

// Define edge and assign endpoints
var e = instance_create_layer(0, 0, "Graph", obj_edge);
e.tail = tail;
e.head = head;

// Return edge ID
return e;
