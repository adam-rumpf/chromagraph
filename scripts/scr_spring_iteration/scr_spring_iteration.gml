/// @func scr_spring_iteration(g, fe, fv, fc, fb, fm, el, fmax)
/// @desc Carries out one iteration of a spring force-driven graph drawing process.
/// @param {obj_graph} g Graph to redraw.
/// @param {real} fe Edge spring force multiplier.
/// @param {real} fv Vertex electrical force multiplier.
/// @param {real} fc Edge centroid electrical force multiplier.
/// @param {real} fb Border exponential force multiplier.
/// @param {real} fm Total force multiplier.
/// @param {real} el Target edge length.
/// @param {real} fmax Maximum force from any single source.

/*
Spring force-driven graph drawing (Eades 1984):
edge force = c1 * log(d/c2)
nonadjacent vertex force = c3/d^2
total movement = c4 * force
Suggested c1 = 2, c2 = 1, c3 = 1, c4 = 0.1, and 100 iterations.

I've rescaled the parameters for use in a much larger room with much larger edge lengths.
I've also included a force from each room border, which is an exponential function of distance to the respective border.
We also attempt to avoid vertices from being drawn on top of edges by repelling them from the centers of edges.
*/

// Rename arguments
var g, fe, fv, fc, fb, fm, el, fmax;
g = argument[0];
fe = argument[1];
fv = argument[2];
fc = argument[3];
fb = argument[4];
fm = argument[5];
el = argument[6];
fmax = argument[7];

// Get graph attributes
var n = array_length_1d(g.v); // number of vertices
var m = array_length_1d(g.e); // number of edges

// Initialize total force vector for each vertex
var fx, fy; // x- and y-components of force vectors
fx = [];
fy = [];
for (var i = 0; i < n; i++)
{
	fx[i] = 0;
	fy[i] = 0;
}

// Calculate each vertex's edge force
for (var i = 0; i < n; i++)
{
	// Local variables
	var v, u, dist, f, vec;
	v = g.v[i]; // current vertex
	
	// Calculate outgoing edge spring forces
	for (var j = 0; j < array_length_1d(v.out_arcs); j++)
	{
		u = v.out_arcs[j].head; // adjacent vertex
		vec = [u.x - v.x, u.y - v.y]; // vector from v to u
		dist = scr_vector_distance([v.x, v.y], [u.x, u.y]); // length of edge
		f = clamp(fm*fe*ln(dist/el), -fmax, fmax); // spring force (positive if too long, negative if too short)
		vec = scr_resize_vector(vec, f); // force vector
		fx[i] += vec[0];
		fy[i] += vec[1];
	}
	
	// Calculate incoming edge spring forces
	for (var j = 0; j < array_length_1d(v.in_arcs); j++)
	{
		u = v.in_arcs[j].tail; // adjacent vertex
		vec = [u.x - v.x, u.y - v.y]; // vector from v to u
		dist = scr_vector_distance([v.x, v.y], [u.x, u.y]); // length of edge
		f = clamp(fm*fe*ln(dist/el), -fmax, fmax); // spring force (positive if too long, negative if too short)
		vec = scr_resize_vector(vec, f); // force vector
		fx[i] += vec[0];
		fy[i] += vec[1];
	}
	
	// Calculate nonadjacent vertex electrical forces
	for (var j = 0; j < n; j++)
	{
		u = g.v[j]; // other vertex
		
		// Skip if adjacent
		if (scr_adjacent(u, v, false) == true)
			continue;
		
		// Calculate force
		vec = [u.x - v.x, u.y - v.y]; // vector from v to u
		dist = scr_vector_distance([v.x, v.y], [u.x, u.y]); // distance between vectors
		if (dist <= 0)
			continue; // skip vertices that are too close
		f = -min(fm*(fv/sqr(dist)), fmax); // electrical force
		vec = scr_resize_vector(vec, f); // force vector
		fx[i] += vec[0];
		fy[i] += vec[1];
	}
	
	// Calculate electrical forces for edge centers
	for (var j = 0; j < m; j++)
	{
		var e = g.e[j]; // current edge
		
		// Skip if incident
		if (e.head == v || e.tail == v)
			continue;
		
		// Get edge centroid
		var ex, ey;
		ex = mean(e.head.x, e.tail.x);
		ey = mean(e.head.y, e.tail.y);
		
		// Calculate force
		vec = [ex - v.x, ey - v.y]; // vector from v to edge centroid
		dist = scr_vector_distance([v.x, v.y], [ex, ey]); // distance from vector to centroid
		if (dist <= 0)
			continue; // skip if too close
		f = -min(fm*(fc/sqr(dist)), fmax); // electrical force
		vec = scr_resize_vector(vec, f); // force vector
		fx[i] += vec[0];
		fy[i] += vec[1];
	}
	
	// Calculate forces from each room border
	
	// Left
	dist = v.x;
	f = min(fm*fb*exp(-dist/el), fmax);
	fx[i] += f;
	
	// Right
	dist = room_width - v.x;
	f = min(fm*fb*exp(-dist/el), fmax);
	fx[i] -= f;
	
	// Top
	dist = v.y;
	f = min(fm*fb*exp(-dist/el), fmax);
	fy[i] += f;
	
	// Bottom
	dist = room_height - v.y;
	f = min(fm*fb*exp(-dist/el), fmax);
	fy[i] -= f;
}

// Move vertices according to force vector
for (var i = 0; i < n; i++)
{
	var v = g.v[i]; // current vertex
	v.x += fx[i];
	v.y += fy[i];
}
