/// @desc Create array of menu buttons.

// Rename global puzzle lists
var coloring, edge, total, graceful, decomp, dominating, fall, equitable;
coloring = global.coloring_puzzles;
edge = global.edge_puzzles;
total = global.total_puzzles;
graceful = global.graceful_puzzles;
decomp = global.decomp_puzzles;
dominating = global.dominating_puzzles;
fall = global.fall_puzzles;
equitable = global.equitable_puzzles;

for (var i = 0; i < array_length_1d(coloring); i++)
{
	var elem, xx, yy, obj;
	elem = coloring[i];
	yy = room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 1;
	obj.puzzle = elem[1];
	obj.image = i;
}
var vortex = instance_create_layer(room_height/9 + 80*array_length_1d(coloring), room_height/9, "Buttons", obj_menu_button_vortex);
vortex.type = 1;
vortex.puzzle = rm_coloring_random;
for (var i = 0; i < array_length_1d(edge); i++)
{
	var elem, xx, yy, obj;
	elem = edge[i];
	yy = 2*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 2;
	obj.puzzle = elem[1];
	obj.image = i;
}
for (var i = 0; i < array_length_1d(total); i++)
{
	var elem, xx, yy, obj;
	elem = total[i];
	yy = 3*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 3;
	obj.puzzle = elem[1];
	obj.image = i;
}
for (var i = 0; i < array_length_1d(graceful); i++)
{
	var elem, xx, yy, obj;
	elem = graceful[i];
	yy = 4*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 4;
	obj.puzzle = elem[1];
	obj.image = i;
}
for (var i = 0; i < array_length_1d(decomp); i++)
{
	var elem, xx, yy, obj;
	elem = decomp[i];
	yy = 5*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 5;
	obj.puzzle = elem[1];
	obj.image = i;
}
for (var i = 0; i < array_length_1d(dominating); i++)
{
	var elem, xx, yy, obj;
	elem = dominating[i];
	yy = 6*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 6;
	obj.puzzle = elem[1];
	obj.image = i;
}
for (var i = 0; i < array_length_1d(fall); i++)
{
	var elem, xx, yy, obj;
	elem = fall[i];
	yy = 7*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 7;
	obj.puzzle = elem[1];
	obj.image = i;
}
for (var i = 0; i < array_length_1d(equitable); i++)
{
	var elem, xx, yy, obj;
	elem = equitable[i];
	yy = 8*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 8;
	obj.puzzle = elem[1];
	obj.image = i;
}
vortex = instance_create_layer(room_height/9 + 80*array_length_1d(equitable), 8*room_height/9, "Buttons", obj_menu_button_vortex);
vortex.type = 8;
vortex.puzzle = rm_equitable_random;
