/// @desc Create array of menu buttons.

// If new game, display automatic save message
msg = 0.0; // opacity of save message
fading = false; // whether message is fading
if (global.new_game == true)
{
	alarm[0] = 5*room_speed; // delay until message fades
	msg = 1.0;
	global.new_game = false;
}

// Vortex object
//###var vortex;
//### Use the global.game_complete variable.

// Menu button graph objects
var g, v, e, vp;
v = [];
e = [];
vp = []; // vertex IDs of prerequisite puzzles (2D array, each row consists of vertex list IDs of puzzle branch beginning followed by all prerequisites)
for (var i = 0; i < 8; i++)
	vp[i,0] = -1;

// Number of menu buttons and connections
var n, m;
n = 0;
m = 0;

// Menu button coordinates
var xx, yy;

// Menu button vertical order
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

// Puzzle type
var type;

// Coloring Puzzles
type = 1;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.coloring_puzzles); i++)
{
	// Define puzzle button
	var elem, xx, yy, obj;
	elem = global.coloring_puzzles[i];
	xx += elem[3];
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button_coloring);
	obj.type = type;
	obj.puzzle = elem[1];
	obj.image_index = i;
	obj.state = global.coloring_save[i];
	
	// Define menu graph elements
	v[n] = instance_create_layer(xx, yy, "Vertices", obj_vertex);
	v[n].visible = false;
	n++;
	if (i == 0)
		vp[type-1,0] = n-1;
	else
	{
		e[m] = scr_create_edge(v[n-2], v[n-1]);
		m++;
	}
	
	// Find if the current room is a prerequisite
	var row = scr_find_array_row_1d(global.puzzle_prereq, elem[0]);
	if (row >= 0)
		vp[row,array_length_2d(vp,row)] = n-1;
}

//###
/*
// Coloring Random
if (global.coloring_save[array_length_1d(global.coloring_save)-1] == 2)
{
	vortex = instance_create_layer(room_height/9 + 80*array_length_1d(global.coloring_puzzles), room_height/9, "Buttons", obj_menu_button_vortex);
	vortex.type = 1;
	vortex.puzzle = rm_coloring_random;
}
*/

// Edge Coloring Puzzles
type = 2;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.edge_puzzles); i++)
{
	// Define puzzle button
	var elem, xx, yy, obj;
	elem = global.edge_puzzles[i];
	xx += elem[3];
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button_edge);
	obj.type = type;
	obj.puzzle = elem[1];
	obj.image_index = i;
	obj.state = global.edge_save[i];
	
	// Define menu graph elements
	v[n] = instance_create_layer(xx, yy, "Vertices", obj_vertex);
	v[n].visible = false;
	n++;
	if (i == 0)
		vp[1,0] = n-1;
	else
	{
		e[m] = scr_create_edge(v[n-2], v[n-1]);
		m++;
	}
	
	// Find if the current room is a prerequisite
	var row = scr_find_array_row_1d(global.puzzle_prereq, elem[0]);
	if (row >= 0)
		vp[row,array_length_2d(vp,row)] = n-1;
}

//###
/*
// Edge Random
if (global.edge_save[array_length_1d(global.edge_save)-1] == 2)
{
	vortex = instance_create_layer(room_height/9 + 80*array_length_1d(global.edge_puzzles), 2*room_height/9, "Buttons", obj_menu_button_vortex);
	vortex.type = 2;
	vortex.puzzle = rm_edge_random;
}
*/

// Total Coloring Puzzles
type = 3;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.total_puzzles); i++)
{
	// Define puzzle button
	var elem, xx, yy, obj;
	elem = global.total_puzzles[i];
	xx += elem[3];
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button_total);
	obj.type = type;
	obj.puzzle = elem[1];
	obj.image_index = i;
	obj.state = global.total_save[i];
	
	// Define menu graph elements
	v[n] = instance_create_layer(xx, yy, "Vertices", obj_vertex);
	v[n].visible = false;
	n++;
	if (i == 0)
		vp[2,0] = n-1;
	else
	{
		e[m] = scr_create_edge(v[n-2], v[n-1]);
		m++;
	}
	
	// Find if the current room is a prerequisite
	var row = scr_find_array_row_1d(global.puzzle_prereq, elem[0]);
	if (row >= 0)
		vp[row,array_length_2d(vp,row)] = n-1;
}

//###
/*
// Total Random
if (global.total_save[array_length_1d(global.total_save)-1] == 2)
{
	vortex = instance_create_layer(room_height/9 + 80*array_length_1d(global.total_puzzles), 3*room_height/9, "Buttons", obj_menu_button_vortex);
	vortex.type = 3;
	vortex.puzzle = rm_total_random;
}
*/

// Graceful Tree Puzzles
type = 4;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.graceful_puzzles); i++)
{
	// Define puzzle button
	var elem, xx, yy, obj;
	elem = global.graceful_puzzles[i];
	xx += elem[3];
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button_graceful);
	obj.type = type;
	obj.puzzle = elem[1];
	obj.image_index = i;
	obj.state = global.graceful_save[i];
	
	// Define menu graph elements
	v[n] = instance_create_layer(xx, yy, "Vertices", obj_vertex);
	v[n].visible = false;
	n++;
	if (i == 0)
		vp[3,0] = n-1;
	else
	{
		e[m] = scr_create_edge(v[n-2], v[n-1]);
		m++;
	}
	
	// Find if the current room is a prerequisite
	var row = scr_find_array_row_1d(global.puzzle_prereq, elem[0]);
	if (row >= 0)
		vp[row,array_length_2d(vp,row)] = n-1;
}

//###
/*
// Graceful Tree Random
if (global.graceful_save[array_length_1d(global.graceful_save)-1] == 2)
{
	vortex = instance_create_layer(room_height/9 + 80*array_length_1d(global.graceful_puzzles), 4*room_height/9, "Buttons", obj_menu_button_vortex);
	vortex.type = 4;
	vortex.puzzle = rm_graceful_random;
}
*/

// Decomposition Puzzles
type = 5;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.decomp_puzzles); i++)
{
	// Define puzzle button
	var elem, xx, yy, obj;
	elem = global.decomp_puzzles[i];
	xx += elem[3];
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button_decomp);
	obj.type = type;
	obj.puzzle = elem[1];
	obj.image_index = i;
	obj.state = global.decomp_save[i];
	
	// Define menu graph elements
	v[n] = instance_create_layer(xx, yy, "Vertices", obj_vertex);
	v[n].visible = false;
	n++;
	if (i == 0)
		vp[4,0] = n-1;
	else
	{
		e[m] = scr_create_edge(v[n-2], v[n-1]);
		m++;
	}
	
	// Find if the current room is a prerequisite
	var row = scr_find_array_row_1d(global.puzzle_prereq, elem[0]);
	if (row >= 0)
		vp[row,array_length_2d(vp,row)] = n-1;
}

//###
/*
// Decomposition Random
if (global.decomp_save[array_length_1d(global.decomp_save)-1] == 2)
{
	vortex = instance_create_layer(room_height/9 + 80*array_length_1d(global.decomp_puzzles), 5*room_height/9, "Buttons", obj_menu_button_vortex);
	vortex.type = 5;
	vortex.puzzle = rm_decomp_random;
}
*/

// Dominating Set Puzzles
type = 6;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.dominating_puzzles); i++)
{
	// Define puzzle button
	var elem, xx, yy, obj;
	elem = global.dominating_puzzles[i];
	xx += elem[3];
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button_dominating);
	obj.type = type;
	obj.puzzle = elem[1];
	obj.image_index = i;
	obj.state = global.dominating_save[i];
	
	// Define menu graph elements
	v[n] = instance_create_layer(xx, yy, "Vertices", obj_vertex);
	v[n].visible = false;
	n++;
	if (i == 0)
		vp[5,0] = n-1;
	else
	{
		e[m] = scr_create_edge(v[n-2], v[n-1]);
		m++;
	}
	
	// Find if the current room is a prerequisite
	var row = scr_find_array_row_1d(global.puzzle_prereq, elem[0]);
	if (row >= 0)
		vp[row,array_length_2d(vp,row)] = n-1;
}

//###
/*
// Dominating Set Random
if (global.dominating_save[array_length_1d(global.dominating_save)-1] == 2)
{
	vortex = instance_create_layer(room_height/9 + 80*array_length_1d(global.dominating_puzzles), 6*room_height/9, "Buttons", obj_menu_button_vortex);
	vortex.type = 6;
	vortex.puzzle = rm_dominating_random;
}
*/

// Fall Coloring Puzzles
type = 7;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.fall_puzzles); i++)
{
	// Define puzzle button
	var elem, xx, yy, obj;
	elem = global.fall_puzzles[i];
	xx += elem[3];
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button_fall);
	obj.type = type;
	obj.puzzle = elem[1];
	obj.image_index = i;
	obj.state = global.fall_save[i];
	
	// Define menu graph elements
	v[n] = instance_create_layer(xx, yy, "Vertices", obj_vertex);
	v[n].visible = false;
	n++;
	if (i == 0)
		vp[6,0] = n-1;
	else
	{
		e[m] = scr_create_edge(v[n-2], v[n-1]);
		m++;
	}
	
	// Find if the current room is a prerequisite
	var row = scr_find_array_row_1d(global.puzzle_prereq, elem[0]);
	if (row >= 0)
		vp[row,array_length_2d(vp,row)] = n-1;
}

//###
/*
// Fall Coloring Random
if (global.fall_save[array_length_1d(global.fall_save)-1] == 2)
{
	vortex = instance_create_layer(room_height/9 + 80*array_length_1d(global.fall_puzzles), 7*room_height/9, "Buttons", obj_menu_button_vortex);
	vortex.type = 7;
	vortex.puzzle = rm_fall_random;
}
*/

// Equitable Coloring Puzzles
type = 8;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.equitable_puzzles); i++)
{
	// Define puzzle button
	var elem, xx, yy, obj;
	elem = global.equitable_puzzles[i];
	xx += elem[3];
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button_equitable);
	obj.type = type;
	obj.puzzle = elem[1];
	obj.image_index = i;
	obj.state = global.equitable_save[i];
	
	// Define menu graph elements
	v[n] = instance_create_layer(xx, yy, "Vertices", obj_vertex);
	v[n].visible = false;
	n++;
	if (i == 0)
		vp[7,0] = n-1;
	else
	{
		e[m] = scr_create_edge(v[n-2], v[n-1]);
		m++;
	}
	
	// Find if the current room is a prerequisite
	var row = scr_find_array_row_1d(global.puzzle_prereq, elem[0]);
	if (row >= 0)
		vp[row,array_length_2d(vp,row)] = n-1;
}

//###
/*
// Equitable Coloring Random
if (global.equitable_save[array_length_1d(global.equitable_save)-1] == 2)
{
	vortex = instance_create_layer(room_height/9 + 80*array_length_1d(global.equitable_puzzles), 8*room_height/9, "Buttons", obj_menu_button_vortex);
	vortex.type = 8;
	vortex.puzzle = rm_equitable_random;
}
*/

// Define prerequisite menu edges
for (var i = 0; i < array_height_2d(vp); i++)
{
	for (var j = 1; j < array_length_2d(vp, i); j++)
	{
		e[m] = scr_create_edge(v[vp[i,0]], v[vp[i,j]]);
		m++;
	}
}

// Define menu graph
g = scr_create_graph(v, e);

//### (Replace this with a portal after the first content patch.)
// If the game is complete, create a button for the ending cutscene
if (global.game_complete == true)
{
	var next = instance_create_layer(room_width-36, room_height/2, "Overlays", obj_gui_next_ending);
	next.xx = room_width-36;
	next.yy = room_height/2;
}
