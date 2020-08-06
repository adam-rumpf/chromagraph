/// @func scr_puzzle_save(room, state)
/// @desc Updates the save state of the puzzle in a specific room.
/// @param {int} room Room ID of the puzzle to update.
/// @param {int} state New value for save variable.
/// @return {bool} Returns true if a new branch has been unlocked.

// Rename arguments
var rm, state;
rm = argument[0];
state = argument[1];

// Whether a new branch has been unlocked
var unlock = false;

// Special room puzzle types
if (rm == rm_coloring_triangle_new)
{
	global.coloring_save[0] = 2;
	global.coloring_save[1] = 1;
	unlock = true;
}

// Search through the global puzzle arrays until finding a match for the given room
var found = false; // whether the puzzle room has been found
var index; // index of current room
if (found == false)
{
	for (var i = 0; i < array_length_1d(global.coloring_save); i++)
	{
		var elem = global.coloring_puzzles[i];
		if (rm == elem[1])
		{
			found = true;
			index = elem[0];
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
			index = elem[0];
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
			index = elem[0];
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
			index = elem[0];
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
			index = elem[0];
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
			index = elem[0];
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
			index = elem[0];
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
			index = elem[0];
			global.equitable_save[i] = max(global.equitable_save[i], state);
			break;
		}
	}
}

// If this isn't a new solution update, quit
if (state != 2)
	return unlock;

// If this is a new solution update, also unlock the next puzzle
var next = scr_puzzle_next(rm);
if (next != rm_menu)
	scr_puzzle_save(next, 1);

// Check whether this new solution unlocks any new branches
for (var i = 0; i < array_length_1d(global.puzzle_prereq); i++)
{
	var elem = global.puzzle_prereq[i];
	for (var j = 0; j < array_length_1d(elem); j++)
	{
		// Skip entries until we find the current one
		if (index != elem[j])
			continue;
				
		// Check if we've just solved a prerequisite for the first time
		if (global.puzzle_prereq_checklist[i,j] == false)
		{
			// Update checklist
			unlock = true;
			global.puzzle_prereq_checklist[i,j] = true;
				
			// Attempt to unlock puzzles
			scr_puzzle_unlock();
		}
		
		break;
	}
}

return unlock;
