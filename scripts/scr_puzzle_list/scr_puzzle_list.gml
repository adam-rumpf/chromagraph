/// @func scr_puzzle_list()
/// @desc Initialization script to define the global puzzle sequences and interactions.

/*
Each puzzle type has a corresponding global 2D array that contains every puzzle in its sequence, in order.
The first element is a unique ID number used for field names in the save file.
The second element is the room corresponding to that puzzle.
*/

//### Edit as puzzle sequence is sorted out.

// Coloring Puzzles
global.coloring_puzzles =
[
	[100, rm_coloring_triangle],
	[101, rm_coloring_dart],
	[102, rm_coloring_p2],
	[103, rm_coloring_petersen_star],
	[104, rm_coloring_kite],
	[105, rm_coloring_petersen_claw],
	[106, rm_coloring_petersen_circle],
	[107, rm_coloring_dodecahedron],
	[108, rm_coloring_categorical_4]
];

// Edge Coloring Puzzles
global.edge_puzzles =
[
	[200, rm_edge_petersen_star]
];

// Total Coloring Puzzles
global.total_puzzles =
[
	[300, rm_total_dart]
];

// Graceful Tree Puzzles
global.graceful_puzzles =
[
	[400, rm_graceful_s5]
];

// Decomposition Puzzles
global.decomp_puzzles =
[
	[500, rm_decomp_triangle],
	[501, rm_decomp_bowtie],
	[502, rm_decomp_triforce],
	[503, rm_decomp_k7]
];

// Dominating Set Puzzles
global.dominating_puzzles =
[
	[600, rm_dominating_spider3]
];

// Fall Coloring Puzzles
global.fall_puzzles =
[
	[700, rm_fall_categorical_4_2],
	[701, rm_fall_categorical_4_4]
];

// Equitable Coloring Puzzles
global.equitable_puzzles =
[
	[800, rm_equitable_c6]
];

//### Figure out a way to encode prerequisites and branches. This should affect the "next" button to return to main menu whenever a branch is unlocked.
