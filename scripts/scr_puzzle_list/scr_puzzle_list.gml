/// @func scr_puzzle_list()
/// @desc Initialization script to define the global puzzle sequences and interactions.

/*
Each puzzle type has a corresponding global 2D read-only array that contains every puzzle in its sequence, in order.
Each row of this array includes the following, in order:
	0 -- unique room ID used in save file
	1 -- room corresponding to puzzle
	2 -- puzzle limit (e.g. number of allowed colors)
	3 -- relative menu button position (first puzzle's is absolute x-coordinate, all following are space relative to previous button)

Each puzzle type also has a 1D array to store the state of the puzzle (0 if locked, 1 if unlocked, 2 if solved).

The random puzzle rooms are listed as a separate array containing only their rooms.
*/

// Standard spacing
var space = 90;

// Coloring Puzzles
global.coloring_puzzles =
[
	[100, rm_coloring_triangle, 3, space],
	[101, rm_coloring_dart, 3, space],
	[102, rm_coloring_w5, 4, space],
	[103, rm_coloring_petersen_star, 3, space], // branch to edge coloring
	[104, rm_coloring_snowflake_3_2, 2, space], // branch to equitable coloring
	[105, rm_coloring_k3_cart_p4, 3, space], // 1/2 branch to total coloring
	[106, rm_coloring_tablet, 4, space], // branch to dominating set
	//[107, rm_coloring_cube, 2, space],
	[108, rm_coloring_necklace_3, 4, space],
	[109, rm_coloring_dodecahedron, 3, space], // 1/2 branch to fall coloring
	//[110, rm_coloring_hypercube, 2, space], //XXX 1/2 branch to fall coloring
	[111, rm_coloring_grotzsch_pentagon, 4, space],
	[114, rm_coloring_fullerene26, 3, space]//,
	//[115, rm_coloring_clebsch, 4, space]
];
global.coloring_save = [];
for (var i = 0; i < array_length_1d(global.coloring_puzzles); i++)
	global.coloring_save[i] = 0;

// Edge Coloring Puzzles
global.edge_puzzles =
[
	[200, rm_edge_dart, 4, space/2 + 5*space],
	[201, rm_edge_k33, 3, space],
	[202, rm_edge_k4, 3, space], // branch to decomposition
	[203, rm_edge_petersen_star, 4, space], // 1/2 branch to total coloring (or replace with an earlier one)
	//[204, rm_edge_dragonfly, 5, space],
	//[205, rm_edge_cube, 3, space],
	//[206, rm_edge_chord, 3, space],
	[207, rm_edge_grotzsch_pentagon, 5, space],
	[208, rm_edge_hypercube, 4, space],
	[209, rm_edge_octahedron, 4, space],
	[210, rm_edge_fullerene26, 3, space]
];
global.edge_save = [];
for (var i = 0; i < array_length_1d(global.edge_puzzles); i++)
	global.edge_save[i] = 0;

// Total Coloring Puzzles
global.total_puzzles =
[
	[300, rm_total_dart, 5, 8*space],
	[301, rm_total_c7, 4, space], // branch to graceful tree
	[302, rm_total_k5, 5, space],
	//[303, rm_total_cube, 5, space],
	//[304, rm_total_hypercube, 6, space],
	[305, rm_total_w4, 5, space],
	[306, rm_total_petersen, 5, space],
	[307, rm_total_k4, 5, space],
	[308, rm_total_k4op3, 7, space]
];
global.total_save = [];
for (var i = 0; i < array_length_1d(global.total_puzzles); i++)
	global.total_save[i] = 0;

// Graceful Tree Puzzles
global.graceful_puzzles =
[
	[400, rm_graceful_p2, 0, space/2 + 9*space],
	[401, rm_graceful_s5, 0, space],
	[402, rm_graceful_p4, 0, space],
	[403, rm_graceful_y, 0, space],
	[404, rm_graceful_y_long, 0, space],
	[405, rm_graceful_crab_2, 0, space],
	[406, rm_graceful_spider3, 0, space],
	//[407, rm_graceful_butterfly, 0, space],
	[408, rm_graceful_caterpillar_3_2, 0, space]
];
global.graceful_save = [];
for (var i = 0; i < array_length_1d(global.graceful_puzzles); i++)
	global.graceful_save[i] = 0;

// Decomposition Puzzles
global.decomp_puzzles =
[
	[500, rm_decomp_triangle, 2, 8*space],
	[501, rm_decomp_bowtie, 2, space],
	[502, rm_decomp_triforce, 3, space],
	[503, rm_decomp_triangle_capsule, 4, space],
	[504, rm_decomp_k33_box, 4, space],
	[505, rm_decomp_double_pentagon, 6, space],
	[506, rm_decomp_k7, 7, space],
	[507, rm_decomp_k8_subset, 8, space]//,
	//[508, rm_decomp_bowtie_cart_triangle, 11, space]
];
global.decomp_save = [];
for (var i = 0; i < array_length_1d(global.decomp_puzzles); i++)
	global.decomp_save[i] = 0;

// Dominating Set Puzzles
global.dominating_puzzles =
[
	[600, rm_dominating_spider3, 3, 8*space],
	[601, rm_dominating_p5, 2, space],
	[602, rm_dominating_cube, 2, space], // 1/2 branch to fall coloring
	[603, rm_dominating_double_hexagon, 3, space],
	[604, rm_dominating_hypercube, 4, space],
	//[605, rm_dominating_king_grid_6x6, 4, space],
	//[606, rm_dominating_andrasfai_4, 3, space],
	[607, rm_dominating_grid_5x5, 7, space],
	[608, rm_dominating_knight_grid_5x5, 5, space],
	[609, rm_dominating_clebsch, 5, space],
	[610, rm_dominating_knight_grid_6x6, 8, space],
	[611, rm_dominating_grid_6x6, 10, space]
];
global.dominating_save = [];
for (var i = 0; i < array_length_1d(global.dominating_puzzles); i++)
	global.dominating_save[i] = 0;

// Fall Coloring Puzzles
global.fall_puzzles =
[
	[700, rm_fall_cube_2, 2, space/2 + 9*space],
	[701, rm_fall_tablet, 3, space],
	//[702, rm_fall_cube_4, 4, space],
	[703, rm_fall_c6_cart_p4, 3, space],
	[704, rm_fall_king_3, 4, space],
	[705, rm_fall_hypercube, 4, space],
	//[706, rm_fall_k3xhouse, 3, space],
	[707, rm_fall_clebsch, 4, space],
	[708, rm_fall_c5_cart_c5, 5, space]
];
global.fall_save = [];
for (var i = 0; i < array_length_1d(global.fall_puzzles); i++)
	global.fall_save[i] = 0;

// Equitable Coloring Puzzles
global.equitable_puzzles =
[
	[800, rm_equitable_c6, 3, space/2 + 6*space],
	[801, rm_equitable_crab, 3, space],
	[802, rm_equitable_cube_4, 4, space],
	[803, rm_equitable_snowflake_5_3, 3, space],
	[804, rm_equitable_flower_6_4, 4, space],
	[805, rm_equitable_5cube_sun, 3, space],
	//[806, rm_equitable_hypercube_4, 4, space],
	[807, rm_equitable_dodecahedron, 4, space]//,
	//[808, rm_equitable_clebsch, 4, space]
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

/*
The following array includes the prerequisites for unlocking each puzzle line.
Each element corresponds to one of the puzzle types 1-8, and consists of a list of any and all puzzle IDs of prerequisite puzzles.
*/
global.puzzle_prereq =
[
	[], // vertex coloring
	[103], // edge coloring
	[105, 203], // total coloring
	[301], // graceful trees
	[202], // decomposition
	[106], // dominating set
	[109, 602], // fall coloring
	[104] // equitable coloring
]

// Checklist indicating which prerequisites have been met
global.puzzle_prereq_checklist = [];
for (var i = 0; i < array_length_1d(global.puzzle_prereq); i++)
{
	for (var j = 0; j < array_length_1d(global.puzzle_prereq[i]); j++)
		global.puzzle_prereq_checklist[i,j] = false;
}
