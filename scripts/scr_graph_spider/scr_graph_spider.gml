/// @func scr_graph_spider(k)
/// @desc Generates the spider graph with k legs.
/// @param {int} k Number of legs.
/// @return {obj_graph} Graph object.

// Rename parameter
var k = argument[0];

// Define vertex positions
var r = room_height/6;
var coords = [];
coords[0] = [room_width/2, room_height/2];
for (var i = 0; i < k; i++)
	coords[i+1] = [room_width/2 + r*cos(pi/2 + 2*pi*i/k), room_height/2 - r*sin(pi/2 + 2*pi*i/k)];
for (var i = 0; i < k; i++)
	coords[i+k+1] = [room_width/2 + 2*r*cos(pi/2 + 2*pi*i/k), room_height/2 - 2*r*sin(pi/2 + 2*pi*i/k)];

// Define pairs of adjacent vertices
var adj = [];
for (var i = 0; i < k; i++)
	adj[i] = [0, i+1];
for (var i = 0; i < k; i++)
	adj[i+k] = [i+1, i+k+1];

// Define graph
return scr_create_graph_list(coords, adj);
