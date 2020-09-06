/// @desc Define vertex-level attributes.

// Set image attributes
image_speed = 0;
image_xscale = 0.5;
image_yscale = 0.5;

// Index within graph's vertex list
index = -1;

// Incident arc sets
out_arcs = [];
in_arcs = [];

// Label (interpretation depends on puzzle type)
label = -1;

// Whether vertex is currently selected or activated by cursor
selected = false;
activated = false;

// Whether the vertex should visually indicate a problem
angry = false;

// Define standard colors
col_gray = make_color_rgb(127, 127, 127);
col_light = c_white;

// Define particle speed
part_speed = 8*(60/room_speed);

// Define particle systems

var rad = 20; // radius

// Particle system
particle_system = part_system_create_layer("Edge_Effects", false);

// List of red particle types (for different emit directions)

types_red = [];
emits_red = [];

var points = 1; // number of directions to emit in
for (var i = 0; i < points; i++)
{
	var dir = 90 + i*(360/points); // base direction
	types_red[i] = part_type_create();
	part_type_shape(types_red[i], pt_shape_flare);
	part_type_size(types_red[i], 0, 1, 0, 0);
	part_type_color1(types_red[i], scr_pallette(0, 1.25));
	part_type_alpha3(types_red[i], 0, 0.06, 0);
	part_type_speed(types_red[i], 0, 2, 0, 0);
	part_type_direction(types_red[i], dir-5, dir+5, 0, 0.01);
	part_type_gravity(types_red[i], 0.02, dir);
	part_type_blend(types_red[i], true);
	part_type_life(types_red[i], 31, 52);
	emits_red[i] = part_emitter_create(particle_system);
	part_emitter_region(particle_system, emits_red[i], x-rad, x+rad, y-rad, y+rad, ps_shape_ellipse, ps_distr_gaussian);
}

// List of blue particle types

types_blue = [];
emits_blue = [];

points = 2;
for (var i = 0; i < points; i++)
{
	var dir = 90 + i*(360/points);
	types_blue[i] = part_type_create();
	part_type_shape(types_blue[i], pt_shape_flare);
	part_type_size(types_blue[i], 0, 1, 0, 0);
	part_type_color1(types_blue[i], scr_pallette(1, 1.25));
	part_type_alpha3(types_blue[i], 0, 0.08, 0);
	part_type_speed(types_blue[i], 0, 1.855, 0, 0);
	part_type_direction(types_blue[i], dir-3.75, dir+3.75, 0, 0.01);
	part_type_gravity(types_blue[i], 0.02, dir);
	part_type_blend(types_blue[i], true);
	part_type_life(types_blue[i], 21, 52);
	emits_blue[i] = part_emitter_create(particle_system);
	part_emitter_region(particle_system, emits_blue[i], x-rad, x+rad, y-rad, y+rad, ps_shape_ellipse, ps_distr_gaussian);
}

// List of green particle types

types_green = [];
emits_green = [];

points = 3;
for (var i = 0; i < points; i++)
{
	var dir = 90 + i*(360/points);
	types_green[i] = part_type_create();
	part_type_shape(types_green[i], pt_shape_flare);
	part_type_size(types_green[i], 0, 1, 0, 0);
	part_type_color1(types_green[i], scr_pallette(2, 1.25));
	part_type_alpha3(types_green[i], 0, 0.05, 0);
	part_type_speed(types_green[i], 0, 1.75, 0, 0);
	part_type_direction(types_green[i], dir-2.5, dir+2.5, 0, 0.01);
	part_type_gravity(types_green[i], 0.02, dir);
	part_type_blend(types_green[i], true);
	part_type_life(types_green[i], 21, 42);
	emits_green[i] = part_emitter_create(particle_system);
	part_emitter_region(particle_system, emits_green[i], x-rad, x+rad, y-rad, y+rad, ps_shape_ellipse, ps_distr_gaussian);
}

// Smoke particles

type_smoke = part_type_create();
part_type_shape(type_smoke, pt_shape_cloud);
part_type_size(type_smoke, 0, 1, 0, 0);
part_type_color1(type_smoke, c_black);
part_type_alpha3(type_smoke, 0, 0.95, 0);
part_type_speed(type_smoke, 0, 0.25, 0, 0.02);
part_type_direction(type_smoke, 0, 360, 0, 0.05);
part_type_gravity(type_smoke, 0.02, 90);
part_type_life(type_smoke, 34, 56);
emit_smoke = part_emitter_create(particle_system);
part_emitter_region(particle_system, emit_smoke, x-1.75*rad, x+1.75*rad, y-1.75*rad, y+1.75*rad, ps_shape_ellipse, ps_distr_gaussian);
