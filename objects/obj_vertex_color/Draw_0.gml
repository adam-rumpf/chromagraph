/// @desc Draw vertex coloring.

// If no vertex has been linked, do nothing
if (v == id)
	exit;

// If vertex is invisible, do nothing
if (v.visible == false)
	exit;

// Randomly vary shine
shine = clamp(shine + random_range(-0.001, 0.001), 0.04, 0.06);

// Constant color for graceful trees
if (global.puzzle == 4)
	scr_color_vertex(v, scr_pallette(0, 1));
// Otherwise label-dependent color
else
	scr_color_vertex(v, scr_pallette(v.label, 1));

// Tint covered vertices in dominating set
if (global.puzzle == 6 && v.label >= 0)
{
	for (var i = 0; i < array_length_1d(v.out_arcs); i++)
		v.out_arcs[i].head.tinted = true;
	for (var i = 0; i < array_length_1d(v.in_arcs); i++)
		v.in_arcs[i].tail.tinted = true;
}

// Draw orbiting effect for self and neighbors in fall coloring
if (global.puzzle == 7)
{
	// Orbit self
	scr_orbit_vertex(v, v.label, global.puzzle_limit, false);
	
	// Orbit all neighbors
	for (var i = 0; i < array_length_1d(v.out_arcs); i++)
		scr_orbit_vertex(v.out_arcs[i].head, v.label, global.puzzle_limit);
	for (var i = 0; i < array_length_1d(v.in_arcs); i++)
		scr_orbit_vertex(v.in_arcs[i].tail, v.label, global.puzzle_limit);
}

// Draw ring overlay and shine
draw_sprite_ext(spr_vertex_ring, 0, x, y, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_vertex_shine, 0, x, y, 2, 2, 0, c_white, shine);
