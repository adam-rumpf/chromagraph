/// @func scr_count_puzzles()
/// @desc Displays the total number of puzzles in the game (for testing).

// Find total length of all puzzle arrays
var total = 0;
total += array_length_1d(global.coloring_puzzles);
total += array_length_1d(global.edge_puzzles);
total += array_length_1d(global.total_puzzles);
total += array_length_1d(global.graceful_puzzles);
total += array_length_1d(global.decomp_puzzles);
total += array_length_1d(global.dominating_puzzles);
total += array_length_1d(global.fall_puzzles);
total += array_length_1d(global.equitable_puzzles);

// Display result
show_message("Total number of puzzles: " + string(total));