/// @desc Define particle system for room.

// Skip if room has no particles
if (room == rm_title)
	exit;

// Special particles for ending room
if (room = rm_ending)
	exit;//###

// Create particle system
particle_system = part_system_create_layer("Overlays", false);

// Atmospheric dust

type_dust = part_type_create();
part_type_shape(type_dust, pt_shape_flare);
part_type_size(type_dust, 0.04, 0.08, 0, 0);
part_type_color2(type_dust, 5825279, 10415871);
part_type_alpha3(type_dust, 0.17, 0.36, 0.11);
part_type_speed(type_dust, 0.02, 0.06, 0, 0.05);
part_type_direction(type_dust, 0, 359, -0.05, 0.10);
part_type_life(type_dust, 4*room_speed, 8*room_speed);

emit_dust = part_emitter_create(particle_system);
part_emitter_region(particle_system, emit_dust, 0, room_width, 0, room_height, ps_shape_rectangle, ps_distr_linear);

// Dark borders

type_dark = part_type_create();
part_type_shape(type_dark, pt_shape_flare);
part_type_size(type_dark, 0.8, 1.2, 0, 0);
part_type_color1(type_dark, c_black);
part_type_alpha3(type_dark, 0, 0.08, 0);
part_type_speed(type_dark, 0.01, 0.04, 0, 0);
part_type_direction(type_dark, 0, 359, 0, 0);
part_type_life(type_dark, 200, 250);

emit_dark_left = part_emitter_create(particle_system);
part_emitter_region(particle_system, emit_dark_left, 0, 0, 0, room_height, ps_shape_line, ps_distr_linear);

emit_dark_right = part_emitter_create(particle_system);
part_emitter_region(particle_system, emit_dark_right, room_width, room_width, 0, room_height, ps_shape_line, ps_distr_linear);

emit_dark_top = part_emitter_create(particle_system);
part_emitter_region(particle_system, emit_dark_top, 0, room_width, 0, 0, ps_shape_line, ps_distr_linear);

emit_dark_bottom = part_emitter_create(particle_system);
part_emitter_region(particle_system, emit_dark_bottom, 0, room_width, room_height, room_height, ps_shape_line, ps_distr_linear);

// Drips

type_drip = part_type_create();
part_type_shape(type_drip, pt_shape_square);
part_type_size(type_drip, 0.04, 0.08, 0, 0);
part_type_color2(type_drip, 16292499, 14783602);
part_type_alpha3(type_drip, 0.2, 0.35, 0.3);
part_type_speed(type_drip, 0.08, 0.16, 0, 0);
part_type_direction(type_drip, 0, 359, 0, 0);
part_type_gravity(type_drip, 0.05, 270);
part_type_life(type_drip, 166, 250);

emit_drip = part_emitter_create(particle_system);
part_emitter_region(particle_system, emit_drip, 0, room_width, -200, -200, ps_shape_line, ps_distr_linear);

// Define lists of particle systems for ease of deletion when game ends
systems = [particle_system];
types = [type_dust, type_dark, type_drip];

// Create particles

// Atmospheric dust
part_emitter_stream(particle_system, emit_dust, type_dust, -4*(60/room_speed)*(800/room_width));
		
// Dark borders
part_emitter_stream(particle_system, emit_dark_left, type_dark, 8*(60/room_speed));
part_emitter_stream(particle_system, emit_dark_right, type_dark, 8*(60/room_speed));
part_emitter_stream(particle_system, emit_dark_top, type_dark, 8*(60/room_speed)*(room_width/800));
part_emitter_stream(particle_system, emit_dark_bottom, type_dark, 8*(60/room_speed)*(room_width/800));
		
// Drips
part_emitter_stream(particle_system, emit_drip, type_drip, -150*(60/room_speed)*(room_width/800));
