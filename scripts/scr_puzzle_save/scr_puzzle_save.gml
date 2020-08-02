/// @func scr_puzzle_save(room, state)
/// @desc Updates the save state of the puzzle in a specific room.
/// @param {int} room Room ID of the puzzle to update.
/// @param {int} state New value for save variable.

// Rename arguments
var rm, state;
rm = argument[0];
state = argument[1];

// Special room puzzle types
if (rm == rm_coloring_triangle_new)
	global.coloring_save[0] = 2;

// Search through the global puzzle arrays until finding a match for the given room
var found = false; // whether the puzzle room has been found
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.coloring_save); i++)
	{
		var elem = global.coloring_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			global.coloring_save[i] = max(global.coloring_save[i], state);
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.edge_save); i++)
	{
		var elem = global.edge_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			global.edge_save[i] = max(global.edge_save[i], state);
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.total_save); i++)
	{
		var elem = global.total_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			global.total_save[i] = max(global.total_save[i], state);
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.graceful_save); i++)
	{
		var elem = global.graceful_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			global.graceful_save[i] = max(global.graceful_save[i], state);
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.decomp_save); i++)
	{
		var elem = global.decomp_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			global.decomp_save[i] = max(global.decomp_save[i], state);
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.dominating_save); i++)
	{
		var elem = global.dominating_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			global.dominating_save[i] = max(global.dominating_save[i], state);
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.fall_save); i++)
	{
		var elem = global.fall_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			global.fall_save[i] = max(global.fall_save[i], state);
			break;
		}
	}
}
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.equitable_save); i++)
	{
		var elem = global.equitable_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			global.equitable_save[i] = max(global.equitable_save[i], state);
			break;
		}
	}
}
