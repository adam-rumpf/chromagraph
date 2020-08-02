/// @func scr_puzzle_type(room)
/// @desc Finds the puzzle type for the puzzle in a given room.
/// @param {int} room Room to find the puzzle type of.
/// @return {int} Puzzle type of room (0 if N/A).

// Rename argument
var rm = argument[0];

// Save clear room puzzle type
if (rm == rm_save_clear)
	return 1;

// Search through the global puzzle arrays until finding a match for the given room
var found, type;
found = false; // whether the next room has been found
type = 0; // puzzle type
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.coloring_puzzles); i++)
	{
		var elem = global.coloring_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			type = 1;
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
			type = 2;
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
			type = 3;
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
			type = 4;
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
			type = 5;
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
			type = 6;
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
			type = 7;
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
			type = 8;
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.random_puzzles); i++)
	{
		if (rm == global.random_puzzles[i])
		{
			found = true;
			type = i + 1;
			break;
		}
	}
}

return type;
