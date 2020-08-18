/// @func scr_game_complete()
/// @desc Tests whether all puzzles have been solved.
/// @return {bool} Returns true if all puzzles are solved, and false otherwise.

// Search all save states to see whether any states are not solved (2)
for (var i = 0; i < array_length_1d(global.coloring_save); i++)
{
	if (global.coloring_save[i] < 2)
		return false;
}
for (var i = 0; i < array_length_1d(global.edge_save); i++)
{
	if (global.edge_save[i] < 2)
		return false;
}
for (var i = 0; i < array_length_1d(global.total_save); i++)
{
	if (global.total_save[i] < 2)
		return false;
}
for (var i = 0; i < array_length_1d(global.graceful_save); i++)
{
	if (global.graceful_save[i] < 2)
		return false;
}
for (var i = 0; i < array_length_1d(global.decomp_save); i++)
{
	if (global.decomp_save[i] < 2)
		return false;
}
for (var i = 0; i < array_length_1d(global.dominating_save); i++)
{
	if (global.dominating_save[i] < 2)
		return false;
}
for (var i = 0; i < array_length_1d(global.fall_save); i++)
{
	if (global.fall_save[i] < 2)
		return false;
}
for (var i = 0; i < array_length_1d(global.equitable_save); i++)
{
	if (global.equitable_save[i] < 2)
		return false;
}

// If all loops have been passed, then all puzzles must be complete
return true;
