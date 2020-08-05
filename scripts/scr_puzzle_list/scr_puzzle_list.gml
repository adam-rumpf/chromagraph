/// @func scr_puzzle_list()
/// @desc Initialization script to define the global puzzle sequences and interactions.

/*
Each puzzle type has a corresponding global 2D read-only array that contains every puzzle in its sequence, in order.
The first element is a unique ID number used for field names in the save file.
The second element is the room corresponding to that puzzle.
The third element is the puzzle limit associated with the puzzle (e.g. number of colors).

//### Additional elements could include the x-coordinates.
//### Find an efficient way to calculate what puzzle branches are unlocked.
//### We might maintain a global array of branch points, in the format [1st prereq, 2nd prereq (or -1), unlock].

Each puzzle type also has a 1D array to store the state of the puzzle (0 if locked, 1 if unlocked, 2 if solved).

The random puzzle rooms are listed as a separate array containing only their rooms.
*/

// Coloring Puzzles
global.coloring_puzzles =
[
	[100, rm_coloring_triangle, 3],
	[101, rm_coloring_dart, 3],
	[102, rm_coloring_w5, 4],
	[103, rm_coloring_k3_cart_p4, 3],
	[104, rm_coloring_petersen_star, 3], // branch to edge coloring
	[105, rm_coloring_snowflake_3_2, 2], // 1/2 branch to graceful tree
	[106, rm_coloring_tablet, 4], // branch to dominating set
	[107, rm_coloring_cube, 2], // 1/2 branch to fall coloring
	[108, rm_coloring_necklace_3, 4],
	[109, rm_coloring_dodecahedron, 3], // branch to equitable coloring
	[110, rm_coloring_grotzsch_pentagon, 4],
	[111, rm_coloring_hypercube, 2], // 1/2 branch to total coloring
	[112, rm_coloring_triangle_star, 5],
	[113, rm_coloring_fullerene26, 3],
	[114, rm_coloring_clebsch, 4]
];
global.coloring_save = [];
for (var i = 0; i < array_length_1d(global.coloring_puzzles); i++)
	global.coloring_save[i] = 0;

// Edge Coloring Puzzles
global.edge_puzzles =
[
	[200, rm_edge_k4, 3],
	[201, rm_edge_k33, 3],
	[202, rm_edge_dragonfly, 5], // 1/2 branch to graceful tree
	[203, rm_edge_petersen_star, 4],
	[204, rm_edge_cube, 3],
	[205, rm_edge_chord, 3],
	[206, rm_edge_grotzsch_pentagon, 5],
	[207, rm_edge_hypercube, 4], // 1/2 branch to total coloring (or replace with an earlier one)
	[208, rm_edge_octahedron, 4], // branch to decomposition
	[209, rm_edge_fullerene26, 3]
];
global.edge_save = [];
for (var i = 0; i < array_length_1d(global.edge_puzzles); i++)
	global.edge_save[i] = 0;

// Total Coloring Puzzles
global.total_puzzles =
[
	[300, rm_total_dart, 5],
	[301, rm_total_c7, 4],
	[302, rm_total_k5, 5],
	[303, rm_total_cube, 5],
	[304, rm_total_hypercube, 6],
	[305, rm_total_w4, 5],
	[306, rm_total_petersen, 5],
	[307, rm_total_k4, 5],
	[308, rm_total_k4op3, 7]
];
global.total_save = [];
for (var i = 0; i < array_length_1d(global.total_puzzles); i++)
	global.total_save[i] = 0;

// Graceful Tree Puzzles
global.graceful_puzzles =
[
	[400, rm_graceful_p2, 0],
	[401, rm_graceful_s5, 0],
	[402, rm_graceful_p4, 0],
	[403, rm_graceful_y, 0],
	[404, rm_graceful_y_long, 0],
	[405, rm_graceful_crab_2, 0],
	[406, rm_graceful_spider3, 0],
	[407, rm_graceful_butterfly, 0],
	[408, rm_graceful_caterpillar_3_2, 0]
];
global.graceful_save = [];
for (var i = 0; i < array_length_1d(global.graceful_puzzles); i++)
	global.graceful_save[i] = 0;

// Decomposition Puzzles
global.decomp_puzzles =
[
	[500, rm_decomp_triangle, 2],
	[501, rm_decomp_bowtie, 2],
	[502, rm_decomp_triforce, 3],
	[503, rm_decomp_triangle_capsule, 4],
	[504, rm_decomp_k33_box, 4],
	[505, rm_decomp_double_pentagon, 6],
	[506, rm_decomp_k7, 7],
	[507, rm_decomp_k8_subset, 8],
	[508, rm_decomp_bowtie_cart_triangle, 11]
];
global.decomp_save = [];
for (var i = 0; i < array_length_1d(global.decomp_puzzles); i++)
	global.decomp_save[i] = 0;

// Dominating Set Puzzles
global.dominating_puzzles =
[
	[600, rm_dominating_spider3, 3],
	[601, rm_dominating_p5, 2],
	[602, rm_dominating_cube, 2],
	[603, rm_dominating_double_hexagon, 3],
	[604, rm_dominating_hypercube, 4],
	[605, rm_dominating_king_grid_6x6, 4],
	[606, rm_dominating_andrasfai_4, 3],
	[607, rm_dominating_grid_5x5, 7],
	[608, rm_dominating_knight_grid_5x5, 5],
	[609, rm_dominating_clebsch, 5], // 1/2 branch to fall coloring
	[610, rm_dominating_knight_grid_6x6, 8],
	[611, rm_dominating_grid_6x6, 10]
];
global.dominating_save = [];
for (var i = 0; i < array_length_1d(global.dominating_puzzles); i++)
	global.dominating_save[i] = 0;

// Fall Coloring Puzzles
global.fall_puzzles =
[
	[700, rm_fall_cube_2, 2],
	[701, rm_fall_tablet, 3],
	[702, rm_fall_cube_4, 4],
	[703, rm_fall_c6_cart_p4, 3],
	[704, rm_fall_king_3, 4],
	[705, rm_fall_hypercube, 4],
	[706, rm_fall_k3xhouse, 3],
	[707, rm_fall_clebsch, 4],
	[708, rm_fall_c5_cart_c5, 5]
];
global.fall_save = [];
for (var i = 0; i < array_length_1d(global.fall_puzzles); i++)
	global.fall_save[i] = 0;

// Equitable Coloring Puzzles
global.equitable_puzzles =
[
	[800, rm_equitable_c6, 3],
	[801, rm_equitable_crab, 3],
	[802, rm_equitable_cube_4, 4],
	[803, rm_equitable_snowflake_5_3, 3],
	[804, rm_equitable_flower_6_4, 4],
	[805, rm_equitable_5cube_sun, 3],
	[806, rm_equitable_hypercube_4, 4],
	[807, rm_equitable_dodecahedron, 4],
	[808, rm_equitable_clebsch, 4]
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
