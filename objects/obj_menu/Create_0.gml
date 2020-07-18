/// @desc Create array of menu buttons.

//###
for (var i = 1; i <= 8; i++)
{
	var xx, yy, obj;
	xx = room_width/2 + 250*cos((2*pi*i)/8);
	yy = room_height/2 + 250*sin((2*pi*i)/8);
	obj =instance_create_layer(xx, yy, "Buttons", obj_menu_button);
	obj.type = i;
	obj.puzzle = rm_coloring_dart;
	obj.image = i-1;
}
