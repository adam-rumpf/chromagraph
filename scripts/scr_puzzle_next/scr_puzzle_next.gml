/// @func scr_puzzle_next(room)
/// @desc Finds the room following a given room in the global puzzle sequence.
/// @param {int} room Room to find the successor of.
/// @return {int} Room following the given room (or the main menu if nothing follows).

// Rename argument
var rm = argument[0];

// Search through the global puzzle arrays until finding a match for the given room
var found, next;
found = false; // whether the next room has been found
next = rm_menu; // next room
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.coloring_puzzles)-1; i++)
	{
		var elem = global.coloring_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			elem = global.coloring_puzzles[i+1];
			next = elem[1];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.edge_puzzles)-1; i++)
	{
		var elem = global.edge_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			elem = global.edge_puzzles[i+1];
			next = elem[1];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.total_puzzles)-1; i++)
	{
		var elem = global.total_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			elem = global.total_puzzles[i+1];
			next = elem[1];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.graceful_puzzles)-1; i++)
	{
		var elem = global.graceful_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			elem = global.graceful_puzzles[i+1];
			next = elem[1];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.decomp_puzzles)-1; i++)
	{
		var elem = global.decomp_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			elem = global.decomp_puzzles[i+1];
			next = elem[1];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.dominating_puzzles)-1; i++)
	{
		var elem = global.dominating_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			elem = global.dominating_puzzles[i+1];
			next = elem[1];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.fall_puzzles)-1; i++)
	{
		var elem = global.fall_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			elem = global.fall_puzzles[i+1];
			next = elem[1];
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.equitable_puzzles)-1; i++)
	{
		var elem = global.equitable_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			elem = global.equitable_puzzles[i+1];
			next = elem[1];
			break;
		}
	}
}

return next;
