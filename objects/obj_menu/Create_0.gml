/// @desc Create array of menu buttons.

// If all puzzles are complete but the main menu puzzle is not, go to the menu puzzle after a delay
if ((global.game_complete == true) && (global.final_complete == false))
	alarm[2] = 1;

// If new game, display automatic save message
msg = 0.0; // opacity of save message
fading = -0.01*(60/room_speed); // fade rate (negative to fade out, positive to fade in)
if (global.new_game == true)
{
	alarm[0] = 2*room_speed; // delay until message fades in
	global.new_game = false;
}

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

// Space between final button and vortex icon
var vx = 80;

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
	var elem, obj;
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
	
	// Special procedures for last button in line
	if (i < array_length_1d(global.coloring_puzzles)-1)
		continue;
	
	// If game is complete, draw a vortex button
	if (global.final_complete == true)
	{
		obj = instance_create_layer(xx + vx, yy, "Buttons", obj_menu_button_vortex);
		obj.type = type;
		obj.puzzle = global.random_puzzles[type-1];
	}
}

// Edge Coloring Puzzles
type = 2;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.edge_puzzles); i++)
{
	// Define puzzle button
	var elem, obj;
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
	
	// Special procedures for last button in line
	if (i < array_length_1d(global.edge_puzzles)-1)
		continue;
	
	// If game is complete, draw a vortex button
	if (global.final_complete == true)
	{
		obj = instance_create_layer(xx + vx, yy, "Buttons", obj_menu_button_vortex);
		obj.type = type;
		obj.puzzle = global.random_puzzles[type-1];
	}
}

// Total Coloring Puzzles
type = 3;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.total_puzzles); i++)
{
	// Define puzzle button
	var elem, obj;
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
	
	// Special procedures for last button in line
	if (i < array_length_1d(global.total_puzzles)-1)
		continue;
	
	// If game is complete, draw a vortex button
	if (global.final_complete == true)
	{
		obj = instance_create_layer(xx + vx, yy, "Buttons", obj_menu_button_vortex);
		obj.type = type;
		obj.puzzle = global.random_puzzles[type-1];
	}
}

// Graceful Tree Puzzles
type = 4;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.graceful_puzzles); i++)
{
	// Define puzzle button
	var elem, obj;
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
	
	// Special procedures for last button in line
	if (i < array_length_1d(global.graceful_puzzles)-1)
		continue;
	
	// If game is complete, draw a vortex button
	if (global.final_complete == true)
	{
		obj = instance_create_layer(xx + vx, yy, "Buttons", obj_menu_button_vortex);
		obj.type = type;
		obj.puzzle = global.random_puzzles[type-1];
	}
}

// Decomposition Puzzles
type = 5;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.decomp_puzzles); i++)
{
	// Define puzzle button
	var elem, obj;
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
	
	// Special procedures for last button in line
	if (i < array_length_1d(global.decomp_puzzles)-1)
		continue;
	
	// If game is complete, draw a vortex button
	if (global.final_complete == true)
	{
		obj = instance_create_layer(xx + vx, yy, "Buttons", obj_menu_button_vortex);
		obj.type = type;
		obj.puzzle = global.random_puzzles[type-1];
	}
}

// Dominating Set Puzzles
type = 6;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.dominating_puzzles); i++)
{
	// Define puzzle button
	var elem, obj;
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
	
	// Special procedures for last button in line
	if (i < array_length_1d(global.dominating_puzzles)-1)
		continue;
	
	// If game is complete, draw a vortex button
	if (global.final_complete == true)
	{
		obj = instance_create_layer(xx + vx, yy, "Buttons", obj_menu_button_vortex);
		obj.type = type;
		obj.puzzle = global.random_puzzles[type-1];
	}
}

// Fall Coloring Puzzles
type = 7;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.fall_puzzles); i++)
{
	// Define puzzle button
	var elem, obj;
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
	
	// Special procedures for last button in line
	if (i < array_length_1d(global.fall_puzzles)-1)
		continue;
	
	// If game is complete, draw a vortex button
	if (global.final_complete == true)
	{
		obj = instance_create_layer(xx + vx, yy, "Buttons", obj_menu_button_vortex);
		obj.type = type;
		obj.puzzle = global.random_puzzles[type-1];
	}
}

// Equitable Coloring Puzzles
type = 8;
xx = 0;
yy = vert[type-1];
for (var i = 0; i < array_length_1d(global.equitable_puzzles); i++)
{
	// Define puzzle button
	var elem, obj;
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
	
	// Special procedures for last button in line
	if (i < array_length_1d(global.equitable_puzzles)-1)
		continue;
	
	// If game is complete, draw a vortex button
	if (global.final_complete == true)
	{
		obj = instance_create_layer(xx + vx, yy, "Buttons", obj_menu_button_vortex);
		obj.type = type;
		obj.puzzle = global.random_puzzles[type-1];
	}
}

// Define prerequisite menu edges
for (var i = 0; i < array_height_2d(vp); i++)
{
	for (var j = 1; j < array_length_2d(vp, i); j++)
	{
		e[m] = scr_create_edge(v[vp[i,0]], v[vp[i,j]]);
		m++;
	}
}

// Define additional links, only when both endpoints are solved
for (var i = 0; i < array_length_1d(global.puzzle_link); i++)
{
	// Get pair of linked puzzles
	var elem, head, tail;
	elem = global.puzzle_link[i];
	tail = elem[0];
	head = elem[1];
	
	// Skip if one wasn't found
	if ((tail < 0) || (head < 0))
		continue;
	
	// If either puzzle is unsolved, skip
	if ((scr_puzzle_status(tail) < 2) || (scr_puzzle_status(head) < 2))
		continue;
	
	// Define an edge
	tail = v[scr_puzzle_index(tail)];
	head = v[scr_puzzle_index(head)];
	e[m] = scr_create_edge(tail, head);
	m++;
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
