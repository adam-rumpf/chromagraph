/// @func scr_puzzle_limit(room)
/// @desc Finds the puzzle limit for the puzzle in a given room.
/// @param {int} room Room to find the puzzle limit of.
/// @return {int} Puzzle limit of room (0 if N/A).

// Rename argument
var rm = argument[0];

// Save clear room puzzle limit
if (rm == rm_save_clear)
	return 3;

// Search through the global puzzle arrays until finding a match for the given room
var found, limit;
found = false; // whether the next room has been found
limit = 0; // puzzle limit
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.coloring_puzzles); i++)
	{
		var elem = global.coloring_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			limit = elem[2];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.edge_puzzles); i++)
	{
		var elem = global.edge_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			limit = elem[2];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.total_puzzles); i++)
	{
		var elem = global.total_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			limit = elem[2];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.graceful_puzzles); i++)
	{
		var elem = global.graceful_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			limit = elem[2];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.decomp_puzzles); i++)
	{
		var elem = global.decomp_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			limit = elem[2];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.dominating_puzzles); i++)
	{
		var elem = global.dominating_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			limit = elem[2];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.fall_puzzles); i++)
	{
		var elem = global.fall_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			limit = elem[2];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.equitable_puzzles); i++)
	{
		var elem = global.equitable_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			limit = elem[2];
			break;
		}
	}
}

return limit;
