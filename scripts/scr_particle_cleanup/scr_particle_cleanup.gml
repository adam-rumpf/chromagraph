/// @func scr_particle_cleanup()
/// @desc Destroys all particle systems, types, and emitters in the main particle object.

// Destroy systems and their emitters
for (var i = 0; i < array_length_1d(obj_particles.systems); i++)
{
	part_emitter_destroy_all(systems[i]);
	part_system_destroy(systems[i]);
}

// Destroy types
for (var i = 0; i < array_length_1d(obj_particles.types); i++)
	part_type_destroy(types[i]);
