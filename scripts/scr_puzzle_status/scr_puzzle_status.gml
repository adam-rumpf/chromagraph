/// @func scr_puzzle_status(num)
/// @desc Gets the save status of a specified puzzle number.
/// @param {int} num ID of puzzle to check.
/// @return {int} Solution status of puzzle.

// Rename argument
var num = argument[0];

// Solution status
var status = -1;

// Search through the global puzzle arrays until finding a match for the given index
var found = false; // whether the puzzle room has been found
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.coloring_save); i++)
	{
		var elem = global.coloring_puzzles[i];
		if (num == elem[0])
		{
			found = true;
			status = global.coloring_save[i];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.edge_save); i++)
	{
		var elem = global.edge_puzzles[i];
		if (num == elem[0])
		{
			found = true;
			status = global.edge_save[i];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.total_save); i++)
	{
		var elem = global.total_puzzles[i];
		if (num == elem[0])
		{
			found = true;
			status = global.total_save[i];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.graceful_save); i++)
	{
		var elem = global.graceful_puzzles[i];
		if (num == elem[0])
		{
			found = true;
			status = global.graceful_save[i];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.decomp_save); i++)
	{
		var elem = global.decomp_puzzles[i];
		if (num == elem[0])
		{
			found = true;
			status = global.decomp_save[i];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.dominating_save); i++)
	{
		var elem = global.dominating_puzzles[i];
		if (num == elem[0])
		{
			found = true;
			status = global.dominating_save[i];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.fall_save); i++)
	{
		var elem = global.fall_puzzles[i];
		if (num == elem[0])
		{
			found = true;
			status = global.fall_save[i];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.equitable_save); i++)
	{
		var elem = global.equitable_puzzles[i];
		if (num == elem[0])
		{
			found = true;
			status = global.equitable_save[i];
			break;
		}
	}
}

return status;
