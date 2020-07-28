/// @func scr_puzzle_list()
/// @desc Initialization script to define the global puzzle sequences and interactions.

/*
Each puzzle type has a corresponding global 2D read-only array that contains every puzzle in its sequence, in order.
The first element is a unique ID number used for field names in the save file.
The second element is the room corresponding to that puzzle.
The third element is the puzzle limit associated with the puzzle (e.g. number of colors).

Each puzzle type also has a 1D array to store the state of the puzzle (0 if locked, 1 if unlocked, 2 if solved).

The random puzzle rooms are listed as a separate array containing only their rooms.
*/

//### Edit as puzzle sequence is sorted out.

// Coloring Puzzles
global.coloring_puzzles =
[
	[100, rm_coloring_triangle, 3], // first
	[101, rm_coloring_dart, 3], // training
	[102, rm_coloring_p2, 2],
	[103, rm_coloring_petersen_star, 3], // moderate (repeat)
	[104, rm_coloring_kite, 3],
	//[105, rm_coloring_petersen_claw, 3], // moderate (easier than star embedding due to symmetry)
	//[106, rm_coloring_petersen_circle, 3], // moderate (easier than star embedding due to symmetry)
	[107, rm_coloring_dodecahedron, 3], // moderate
	[108, rm_coloring_categorical_4, 2],
	[109, rm_coloring_grotzsch_pentagon, 4], // moderate
	[110, rm_coloring_necklace_3, 4], // moderate
	[111, rm_coloring_w5, 4], // training
	[112, rm_coloring_cube, 2], // training
	[113, rm_coloring_hypercube, 2], // trivial
	[114, rm_coloring_k3_cart_p4, 3], // training
	[115, rm_coloring_triangle_star, 5], // challenging
	[116, rm_coloring_tablet, 4], // easy
	[117, rm_coloring_fullerene26, 3] // moderate
];
global.coloring_save = [];
for (var i = 0; i < array_length_1d(global.coloring_puzzles); i++)
	global.coloring_save[i] = 0;

// Edge Coloring Puzzles
global.edge_puzzles =
[
	[200, rm_edge_petersen_star, 4], // moderate
	[201, rm_edge_grotzsch_pentagon, 5], // moderate
	[202, rm_edge_cube, 3], // moderate
	[203, rm_edge_k33, 3], // training
	[204, rm_edge_fullerene26, 3], // moderate
	[205, rm_edge_chord, 3] // training
];
global.edge_save = [];
for (var i = 0; i < array_length_1d(global.edge_puzzles); i++)
	global.edge_save[i] = 0;

// Total Coloring Puzzles
global.total_puzzles =
[
	[300, rm_total_dart, 5], // training
	[301, rm_total_k4, 5], // moderate
	[302, rm_total_k5, 5], // training
	[303, rm_total_k4op3, 7] // challenging
];
global.total_save = [];
for (var i = 0; i < array_length_1d(global.total_puzzles); i++)
	global.total_save[i] = 0;

// Graceful Tree Puzzles
global.graceful_puzzles =
[
	[400, rm_graceful_s5, 0], // first
	[401, rm_graceful_p5, 0], // training
	[402, rm_graceful_dragonfly, 0], // challenging
	[403, rm_graceful_crab_2, 0], // challenging
	[404, rm_graceful_butterfly, 0], // challenging
	[405, rm_graceful_spider3, 0], // challenging
	[406, rm_graceful_caterpillar_3_2, 0] // challenging
];
global.graceful_save = [];
for (var i = 0; i < array_length_1d(global.graceful_puzzles); i++)
	global.graceful_save[i] = 0;

// Decomposition Puzzles
global.decomp_puzzles =
[
	[500, rm_decomp_triangle, 2], // first
	[501, rm_decomp_bowtie, 2], // second
	[502, rm_decomp_triforce, 3], // third
	[503, rm_decomp_k7, 7], // moderate
	[504, rm_decomp_k33_box, 4], // easy
	[505, rm_decomp_k8_subset, 8], // challenging
	[506, rm_decomp_bowtie_cart_triangle, 11] // moderate/challenging
];
global.decomp_save = [];
for (var i = 0; i < array_length_1d(global.decomp_puzzles); i++)
	global.decomp_save[i] = 0;

// Dominating Set Puzzles
global.dominating_puzzles =
[
	[600, rm_dominating_spider3, 3], // training
	[601, rm_dominating_p5, 2], // training
	[602, rm_dominating_double_hexagon, 3], // easy
	[603, rm_dominating_grid_5x5, 7], // moderate/easy
	[604, rm_dominating_grid_6x6, 10], // challenging (haven't solved yet, but should be possible)
	[605, rm_dominating_king_grid_6x6, 4], // easy
	[606, rm_dominating_knight_grid_5x5, 5], // moderate/easy
	[607, rm_dominating_knight_grid_6x6, 8] // moderate
];
global.dominating_save = [];
for (var i = 0; i < array_length_1d(global.dominating_puzzles); i++)
	global.dominating_save[i] = 0;

// Fall Coloring Puzzles
global.fall_puzzles =
[
	[700, rm_fall_cube_2, 2], // first (2 colors makes it trivial, but gives a chance to see the lines)
	[701, rm_fall_cube_4, 4], // training
	[702, rm_fall_tablet, 3], // easy
	[703, rm_fall_c5_cart_c5, 3], // challenging (haven't solved yet, but solution supposedly exists)
	[704, rm_fall_k3xhouse, 3], // looks challenging but easy symmetry solution
	[705, rm_fall_c6_cart_p4, 3] // easy
];
global.fall_save = [];
for (var i = 0; i < array_length_1d(global.fall_puzzles); i++)
	global.fall_save[i] = 0;

// Equitable Coloring Puzzles
global.equitable_puzzles =
[
	[800, rm_equitable_c6, 3], // training
	[801, rm_equitable_hypercube_4, 4], // moderate
	[802, rm_equitable_dodecahedron, 4] // easy/moderate
];
global.equitable_save = [];
for (var i = 0; i < array_length_1d(global.equitable_puzzles); i++)
	global.equitable_save[i] = 0;

// Random puzzles
global.random_puzzles =
[
	rm_coloring_random,
	rm_edge_random,
	rm_total_random,
	rm_graceful_random,
	rm_decomp_random,
	rm_dominating_random,
	rm_fall_random,
	rm_equitable_random
];

//### Figure out a way to encode prerequisites and branches. This should affect the "next" button to return to main menu whenever a branch is unlocked.
