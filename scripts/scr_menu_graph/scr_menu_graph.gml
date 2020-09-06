/// @func scr_menu_graph()
/// @desc Generates a graph for the final menu puzzle.
/// @return {obj_graph} Graph object (uses menu vertices rather than standard).

// Define vertex positions and adjacencies based on global puzzle lists
var coords, adj;
coords = [];
adj = [];

// Vertex and edge lists
var v, e;
v = [];
e = [];

// Number of menu buttons and connections
var n, m, vp;
n = 0;
m = 0;
vp = []; // vertex IDs of prerequisite puzzles (2D array, each row consists of vertex list IDs of puzzle branch beginning followed by all prerequisites)
for (var i = 0; i < 8; i++)
	vp[i,0] = -1;

// Current coordinates
var xx, yy;

// Vertical order
var vert =
[
	5*room_height/9,
	2*room_height/9,
	3*room_height/9,
	4*room_height/9,
	1*room_height/9,
	7*room_height/9,
	6*room_height/9,
	8*room_height/9
];

// Current puzzle type
var type;

// Coloring Puzzles
type = 1;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.coloring_puzzles); i++)
{
	// Get button coordinates
	var elem = global.coloring_puzzles[i];
	xx += elem[3];
	coords[n] = [xx, yy];
	
	// Define vertex
	v[n] = instance_create_layer(xx, yy, "Vertices", obj_vertex_menu);
	v[n].index = n;
	v[n].sprite_index = spr_stone_coloring;
	v[n].image_index = i;
	n++;
	
	// Define main line adjacencies
	if (i == 0)
		vp[type-1,0] = n-1;
	else
	{
		adj[m] = [n-2, n-1];
		m++;
	}
	
	// Find if the current room is a prerequisite
	var row = scr_find_array_row_1d(global.puzzle_prereq, elem[0]);
	if (row >= 0)
		vp[row,array_length_2d(vp,row)] = n-1;
}

// Edge Coloring Puzzles
type = 2;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.edge_puzzles); i++)
{
	// Get button coordinates
	var elem = global.edge_puzzles[i];
	xx += elem[3];
	coords[n] = [xx, yy];
	
	// Define vertex
	v[n] = instance_create_layer(xx, yy, "Vertices", obj_vertex_menu);
	v[n].index = n;
	v[n].sprite_index = spr_stone_edge;
	v[n].image_index = i;
	n++;
	
	// Define main line adjacencies
	if (i == 0)
		vp[type-1,0] = n-1;
	else
	{
		adj[m] = [n-2, n-1];
		m++;
	}
	
	// Find if the current room is a prerequisite
	var row = scr_find_array_row_1d(global.puzzle_prereq, elem[0]);
	if (row >= 0)
		vp[row,array_length_2d(vp,row)] = n-1;
}

// Total Coloring Puzzles
type = 3;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.total_puzzles); i++)
{
	// Get button coordinates
	var elem = global.total_puzzles[i];
	xx += elem[3];
	coords[n] = [xx, yy];
	
	// Define vertex
	v[n] = instance_create_layer(xx, yy, "Vertices", obj_vertex_menu);
	v[n].index = n;
	v[n].sprite_index = spr_stone_total;
	v[n].image_index = i;
	n++;
	
	// Define main line adjacencies
	if (i == 0)
		vp[type-1,0] = n-1;
	else
	{
		adj[m] = [n-2, n-1];
		m++;
	}
	
	// Find if the current room is a prerequisite
	var row = scr_find_array_row_1d(global.puzzle_prereq, elem[0]);
	if (row >= 0)
		vp[row,array_length_2d(vp,row)] = n-1;
}

// Graceful Tree Puzzles
type = 4;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.graceful_puzzles); i++)
{
	// Get button coordinates
	var elem = global.graceful_puzzles[i];
	xx += elem[3];
	coords[n] = [xx, yy];
	
	// Define vertex
	v[n] = instance_create_layer(xx, yy, "Vertices", obj_vertex_menu);
	v[n].index = n;
	v[n].sprite_index = spr_stone_graceful;
	v[n].image_index = i;
	n++;
	
	// Define main line adjacencies
	if (i == 0)
		vp[type-1,0] = n-1;
	else
	{
		adj[m] = [n-2, n-1];
		m++;
	}
	
	// Find if the current room is a prerequisite
	var row = scr_find_array_row_1d(global.puzzle_prereq, elem[0]);
	if (row >= 0)
		vp[row,array_length_2d(vp,row)] = n-1;
}

// Decomposition Puzzles
type = 5;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.decomp_puzzles); i++)
{
	// Get button coordinates
	var elem = global.decomp_puzzles[i];
	xx += elem[3];
	coords[n] = [xx, yy];
	
	// Define vertex
	v[n] = instance_create_layer(xx, yy, "Vertices", obj_vertex_menu);
	v[n].index = n;
	v[n].sprite_index = spr_stone_decomp;
	v[n].image_index = i;
	n++;
	
	// Define main line adjacencies
	if (i == 0)
		vp[type-1,0] = n-1;
	else
	{
		adj[m] = [n-2, n-1];
		m++;
	}
	
	// Find if the current room is a prerequisite
	var row = scr_find_array_row_1d(global.puzzle_prereq, elem[0]);
	if (row >= 0)
		vp[row,array_length_2d(vp,row)] = n-1;
}

// Dominating Set Puzzles
type = 6;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.dominating_puzzles); i++)
{
	// Get button coordinates
	var elem = global.dominating_puzzles[i];
	xx += elem[3];
	coords[n] = [xx, yy];
	
	// Define vertex
	v[n] = instance_create_layer(xx, yy, "Vertices", obj_vertex_menu);
	v[n].index = n;
	v[n].sprite_index = spr_stone_dominating;
	v[n].image_index = i;
	n++;
	
	// Define main line adjacencies
	if (i == 0)
		vp[type-1,0] = n-1;
	else
	{
		adj[m] = [n-2, n-1];
		m++;
	}
	
	// Find if the current room is a prerequisite
	var row = scr_find_array_row_1d(global.puzzle_prereq, elem[0]);
	if (row >= 0)
		vp[row,array_length_2d(vp,row)] = n-1;
}

// Fall Coloring Puzzles
type = 7;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.fall_puzzles); i++)
{
	// Get button coordinates
	var elem = global.fall_puzzles[i];
	xx += elem[3];
	coords[n] = [xx, yy];
	
	// Define vertex
	v[n] = instance_create_layer(xx, yy, "Vertices", obj_vertex_menu);
	v[n].index = n;
	v[n].sprite_index = spr_stone_fall;
	v[n].image_index = i;
	n++;
	
	// Define main line adjacencies
	if (i == 0)
		vp[type-1,0] = n-1;
	else
	{
		adj[m] = [n-2, n-1];
		m++;
	}
	
	// Find if the current room is a prerequisite
	var row = scr_find_array_row_1d(global.puzzle_prereq, elem[0]);
	if (row >= 0)
		vp[row,array_length_2d(vp,row)] = n-1;
}

// Equitable Coloring Puzzles
type = 8;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.equitable_puzzles); i++)
{
	// Get button coordinates
	var elem = global.equitable_puzzles[i];
	xx += elem[3];
	coords[n] = [xx, yy];
	
	// Define vertex
	v[n] = instance_create_layer(xx, yy, "Vertices", obj_vertex_menu);
	v[n].index = n;
	v[n].sprite_index = spr_stone_equitable;
	v[n].image_index = i;
	n++;
	
	// Define main line adjacencies
	if (i == 0)
		vp[type-1,0] = n-1;
	else
	{
		adj[m] = [n-2, n-1];
		m++;
	}
	
	// Find if the current room is a prerequisite
	var row = scr_find_array_row_1d(global.puzzle_prereq, elem[0]);
	if (row >= 0)
		vp[row,array_length_2d(vp,row)] = n-1;
}

// Define prerequisite edges
for (var i = 0; i < array_height_2d(vp); i++)
{
	for (var j = 1; j < array_length_2d(vp, i); j++)
	{
		adj[m] = [vp[i,0], vp[i,j]];
		m++;
	}
}

//### Define additional edges

// Generate edges
for (var i = 0; i < array_length_1d(adj); i++)
{
	var elem = adj[i];
	e[i] = scr_create_edge(v[elem[0]], v[elem[1]]);
}

// Define graph
return scr_create_graph(v, e);
