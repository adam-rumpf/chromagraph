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
	[100, rm_coloring_triangle, 3],
	[101, rm_coloring_dart, 3],
	[102, rm_coloring_p2, 2],
	[103, rm_coloring_petersen_star, 3],
	[104, rm_coloring_kite, 3],
	[105, rm_coloring_petersen_claw, 3],
	[106, rm_coloring_petersen_circle, 3],
	[107, rm_coloring_dodecahedron, 3],
	[108, rm_coloring_categorical_4, 2],
	[109, rm_coloring_grotzsch_pentagon, 4]
];
global.coloring_save = [];
for (var i = 0; i < array_length_1d(global.coloring_puzzles); i++)
	global.coloring_save[i] = 0;

// Edge Coloring Puzzles
global.edge_puzzles =
[
	[200, rm_edge_petersen_star, 4],
	[201, rm_edge_grotzsch_pentagon, 5]
];
global.edge_save = [];
for (var i = 0; i < array_length_1d(global.edge_puzzles); i++)
	global.edge_save[i] = 0;

// Total Coloring Puzzles
global.total_puzzles =
[
	[300, rm_total_dart, 5]
];
global.total_save = [];
for (var i = 0; i < array_length_1d(global.total_puzzles); i++)
	global.total_save[i] = 0;

// Graceful Tree Puzzles
global.graceful_puzzles =
[
	[400, rm_graceful_s5, 0]
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
	[503, rm_decomp_k7, 7]
];
global.decomp_save = [];
for (var i = 0; i < array_length_1d(global.decomp_puzzles); i++)
	global.decomp_save[i] = 0;

// Dominating Set Puzzles
global.dominating_puzzles =
[
	[600, rm_dominating_spider3, 3]
];
global.dominating_save = [];
for (var i = 0; i < array_length_1d(global.dominating_puzzles); i++)
	global.dominating_save[i] = 0;

// Fall Coloring Puzzles
global.fall_puzzles =
[
	[700, rm_fall_categorical_4_2, 2],
	[701, rm_fall_categorical_4_4, 4]
];
global.fall_save = [];
for (var i = 0; i < array_length_1d(global.fall_puzzles); i++)
	global.fall_save[i] = 0;

// Equitable Coloring Puzzles
global.equitable_puzzles =
[
	[800, rm_equitable_c6, 3]
];
global.equitable_save = [];
for (var i = 0; i < array_length_1d(global.equitable_puzzles); i++)
	global.equitable_save[i] = 0;

// Random puzzles
global.random_puzzles =
[
	rm_coloring_random,
	-1,
	-1,
	-1,
	-1,
	-1,
	-1,
	rm_equitable_random
];

//### Figure out a way to encode prerequisites and branches. This should affect the "next" button to return to main menu whenever a branch is unlocked.
