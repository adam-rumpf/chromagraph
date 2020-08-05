/// @desc Create array of menu buttons.

// Vortex object
var vortex;

// Coloring Puzzles
for (var i = 0; i < array_length_1d(global.coloring_puzzles); i++)
{
	// Define puzzle button
	var elem, xx, yy, obj;
	elem = global.coloring_puzzles[i];
	yy = room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 1;
	obj.puzzle = elem[1];
	obj.image = i;
	obj.state = global.coloring_save[i];
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
for (var i = 0; i < array_length_1d(global.edge_puzzles); i++)
{
	// Define puzzle button
	var elem, xx, yy, obj;
	elem = global.edge_puzzles[i];
	yy = 2*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 2;
	obj.puzzle = elem[1];
	obj.image = i;
	obj.state = global.edge_save[i];
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
for (var i = 0; i < array_length_1d(global.total_puzzles); i++)
{
	// Define puzzle button
	var elem, xx, yy, obj;
	elem = global.total_puzzles[i];
	yy = 3*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 3;
	obj.puzzle = elem[1];
	obj.image = i;
	obj.state = global.total_save[i];
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
for (var i = 0; i < array_length_1d(global.graceful_puzzles); i++)
{
	// Define puzzle button
	var elem, xx, yy, obj;
	elem = global.graceful_puzzles[i];
	yy = 4*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 4;
	obj.puzzle = elem[1];
	obj.image = i;
	obj.state = global.graceful_save[i];
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
for (var i = 0; i < array_length_1d(global.decomp_puzzles); i++)
{
	// Define puzzle button
	var elem, xx, yy, obj;
	elem = global.decomp_puzzles[i];
	yy = 5*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 5;
	obj.puzzle = elem[1];
	obj.image = i;
	obj.state = global.decomp_save[i];
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
for (var i = 0; i < array_length_1d(global.dominating_puzzles); i++)
{
	// Define puzzle button
	var elem, xx, yy, obj;
	elem = global.dominating_puzzles[i];
	yy = 6*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 6;
	obj.puzzle = elem[1];
	obj.image = i;
	obj.state = global.dominating_save[i];
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
for (var i = 0; i < array_length_1d(global.fall_puzzles); i++)
{
	// Define puzzle button
	var elem, xx, yy, obj;
	elem = global.fall_puzzles[i];
	yy = 7*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 7;
	obj.puzzle = elem[1];
	obj.image = i;
	obj.state = global.fall_save[i];
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
for (var i = 0; i < array_length_1d(global.equitable_puzzles); i++)
{
	// Define puzzle button
	var elem, xx, yy, obj;
	elem = global.equitable_puzzles[i];
	yy = 8*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 8;
	obj.puzzle = elem[1];
	obj.image = i;
	obj.state = global.equitable_save[i];
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
