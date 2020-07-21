/// @desc Create array of menu buttons.

//###
/*for (var i = 1; i <= 8; i++)
{
	var xx, yy, obj;
	xx = room_width/2 + 250*cos((2*pi*i)/8);
	yy = room_height/2 + 250*sin((2*pi*i)/8);
	obj =instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = i;
	obj.puzzle = rm_coloring_dart;
	obj.image = i-1;
}*/

//###
var coloring =
[
	rm_coloring_triangle,
	rm_coloring_dart,
	rm_coloring_p2,
	rm_coloring_petersen_star,
	rm_coloring_kite,
	rm_coloring_petersen_claw,
	rm_coloring_petersen_circle,
	rm_coloring_dodecahedron,
	rm_coloring_categorical_4
];
var edge =
[
	rm_edge_petersen_star
];
var total =
[
	rm_total_dart
];
var graceful =
[
	rm_graceful_s5
];
var decomp =
[
	rm_decomp_triangle,
	rm_decomp_bowtie,
	rm_decomp_triforce,
	rm_decomp_k7
];
var dominating =
[
	rm_dominating_spider3
];
var fall =
[
	rm_fall_categorical_4_2,
	rm_fall_categorical_4_4
];
var equitable =
[
	rm_equitable_c6
];

for (var i = 0; i < array_length_1d(coloring); i++)
{
	var xx, yy, obj;
	yy = room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 1;
	obj.puzzle = coloring[i];
	obj.image = i;
}
var vortex = instance_create_layer(room_height/9 + 80*array_length_1d(coloring), room_height/9, "Buttons", obj_menu_button_vortex);
vortex.type = 1;
vortex.puzzle = rm_coloring_random;
for (var i = 0; i < array_length_1d(edge); i++)
{
	var xx, yy, obj;
	yy = 2*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 2;
	obj.puzzle = edge[i];
	obj.image = i;
}
for (var i = 0; i < array_length_1d(total); i++)
{
	var xx, yy, obj;
	yy = 3*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 3;
	obj.puzzle = total[i];
	obj.image = i;
}
for (var i = 0; i < array_length_1d(graceful); i++)
{
	var xx, yy, obj;
	yy = 4*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 4;
	obj.puzzle = graceful[i];
	obj.image = i;
}
for (var i = 0; i < array_length_1d(decomp); i++)
{
	var xx, yy, obj;
	yy = 5*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 5;
	obj.puzzle = decomp[i];
	obj.image = i;
}
for (var i = 0; i < array_length_1d(dominating); i++)
{
	var xx, yy, obj;
	yy = 6*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 6;
	obj.puzzle = dominating[i];
	obj.image = i;
}
for (var i = 0; i < array_length_1d(fall); i++)
{
	var xx, yy, obj;
	yy = 7*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 7;
	obj.puzzle = fall[i];
	obj.image = i;
}
for (var i = 0; i < array_length_1d(equitable); i++)
{
	var xx, yy, obj;
	yy = 8*room_height/9;
	xx = room_height/9 + 80*i;
	obj = instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = 8;
	obj.puzzle = equitable[i];
	obj.image = i;
}
vortex = instance_create_layer(room_height/9 + 80*array_length_1d(equitable), 8*room_height/9, "Buttons", obj_menu_button_vortex);
vortex.type = 8;
vortex.puzzle = rm_equitable_random;
