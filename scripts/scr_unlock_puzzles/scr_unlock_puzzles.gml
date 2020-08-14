/// @func scr_unlock_puzzles()
/// @desc Unlocks all puzzles (for testing).

// Go through each global save array and set all states to "solved" (2)
for (var i = 0; i < array_length_1d(global.coloring_save); i++)
	global.coloring_save[i] = 2;
for (var i = 0; i < array_length_1d(global.edge_save); i++)
	global.edge_save[i] = 2;
for (var i = 0; i < array_length_1d(global.total_save); i++)
	global.total_save[i] = 2;
for (var i = 0; i < array_length_1d(global.graceful_save); i++)
	global.graceful_save[i] = 2;
for (var i = 0; i < array_length_1d(global.decomp_save); i++)
	global.decomp_save[i] = 2;
for (var i = 0; i < array_length_1d(global.dominating_save); i++)
	global.dominating_save[i] = 2;
for (var i = 0; i < array_length_1d(global.fall_save); i++)
	global.fall_save[i] = 2;
for (var i = 0; i < array_length_1d(global.equitable_save); i++)
	global.equitable_save[i] = 2;

// Set all prerequisite checklist values
for (var i = 0; i < array_height_2d(global.puzzle_prereq_checklist); i++)
{
	for (var j = 0; j < array_length_2d(global.puzzle_prereq_checklist, i); j++)
		global.puzzle_prereq_checklist[i,j] = true;
}
