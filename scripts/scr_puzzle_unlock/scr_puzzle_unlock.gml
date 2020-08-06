/// @func scr_puzzle_unlock()
/// @desc Updates the prerequisite checklist and unlocks any appropriate puzzles based on which are currently solved.

// Process each solution set
for (var i = 0; i < array_length_1d(global.coloring_save); i++)
{
	// Skip unless solved
	if (global.coloring_save[i] != 2)
		continue;
	
	// Search prerequisite checklist for the current room
	var elem = global.coloring_puzzles[i];
	var index = elem[0];
	for (var j = 0; j < array_length_1d(global.puzzle_prereq); j++)
	{
		var elem = global.puzzle_prereq[j];
		for (var k = 0; k < array_length_1d(elem); k++)
		{
			if (elem[k] != index)
				continue;
			
			// Set prerequisite to true
			global.puzzle_prereq_checklist[j,k] = true;
		}
	}
}
for (var i = 0; i < array_length_1d(global.edge_save); i++)
{
	// Skip unless solved
	if (global.edge_save[i] != 2)
		continue;
	
	// Search prerequisite checklist for the current room
	var elem = global.edge_puzzles[i];
	var index = elem[0];
	for (var j = 0; j < array_length_1d(global.puzzle_prereq); j++)
	{
		var elem = global.puzzle_prereq[j];
		for (var k = 0; k < array_length_1d(elem); k++)
		{
			if (elem[k] != index)
				continue;
			
			// Set prerequisite to true
			global.puzzle_prereq_checklist[j,k] = true;
		}
	}
}
for (var i = 0; i < array_length_1d(global.total_save); i++)
{
	// Skip unless solved
	if (global.total_save[i] != 2)
		continue;
	
	// Search prerequisite checklist for the current room
	var elem = global.total_puzzles[i];
	var index = elem[0];
	for (var j = 0; j < array_length_1d(global.puzzle_prereq); j++)
	{
		var elem = global.puzzle_prereq[j];
		for (var k = 0; k < array_length_1d(elem); k++)
		{
			if (elem[k] != index)
				continue;
			
			// Set prerequisite to true
			global.puzzle_prereq_checklist[j,k] = true;
		}
	}
}
for (var i = 0; i < array_length_1d(global.graceful_save); i++)
{
	// Skip unless solved
	if (global.graceful_save[i] != 2)
		continue;
	
	// Search prerequisite checklist for the current room
	var elem = global.graceful_puzzles[i];
	var index = elem[0];
	for (var j = 0; j < array_length_1d(global.puzzle_prereq); j++)
	{
		var elem = global.puzzle_prereq[j];
		for (var k = 0; k < array_length_1d(elem); k++)
		{
			if (elem[k] != index)
				continue;
			
			// Set prerequisite to true
			global.puzzle_prereq_checklist[j,k] = true;
		}
	}
}
for (var i = 0; i < array_length_1d(global.decomp_save); i++)
{
	// Skip unless solved
	if (global.decomp_save[i] != 2)
		continue;
	
	// Search prerequisite checklist for the current room
	var elem = global.decomp_puzzles[i];
	var index = elem[0];
	for (var j = 0; j < array_length_1d(global.puzzle_prereq); j++)
	{
		var elem = global.puzzle_prereq[j];
		for (var k = 0; k < array_length_1d(elem); k++)
		{
			if (elem[k] != index)
				continue;
			
			// Set prerequisite to true
			global.puzzle_prereq_checklist[j,k] = true;
		}
	}
}
for (var i = 0; i < array_length_1d(global.dominating_save); i++)
{
	// Skip unless solved
	if (global.dominating_save[i] != 2)
		continue;
	
	// Search prerequisite checklist for the current room
	var elem = global.dominating_puzzles[i];
	var index = elem[0];
	for (var j = 0; j < array_length_1d(global.puzzle_prereq); j++)
	{
		var elem = global.puzzle_prereq[j];
		for (var k = 0; k < array_length_1d(elem); k++)
		{
			if (elem[k] != index)
				continue;
			
			// Set prerequisite to true
			global.puzzle_prereq_checklist[j,k] = true;
		}
	}
}
for (var i = 0; i < array_length_1d(global.fall_save); i++)
{
	// Skip unless solved
	if (global.fall_save[i] != 2)
		continue;
	
	// Search prerequisite checklist for the current room
	var elem = global.fall_puzzles[i];
	var index = elem[0];
	for (var j = 0; j < array_length_1d(global.puzzle_prereq); j++)
	{
		var elem = global.puzzle_prereq[j];
		for (var k = 0; k < array_length_1d(elem); k++)
		{
			if (elem[k] != index)
				continue;
			
			// Set prerequisite to true
			global.puzzle_prereq_checklist[j,k] = true;
		}
	}
}
for (var i = 0; i < array_length_1d(global.equitable_save); i++)
{
	// Skip unless solved
	if (global.equitable_save[i] != 2)
		continue;
	
	// Search prerequisite checklist for the current room
	var elem = global.equitable_puzzles[i];
	var index = elem[0];
	for (var j = 0; j < array_length_1d(global.puzzle_prereq); j++)
	{
		var elem = global.puzzle_prereq[j];
		for (var k = 0; k < array_length_1d(elem); k++)
		{
			if (elem[k] != index)
				continue;
			
			// Set prerequisite to true
			global.puzzle_prereq_checklist[j,k] = true;
		}
	}
}

// Read through prerequisite checklist
for (var i = 0; i < array_height_2d(global.puzzle_prereq_checklist); i++)
{
	// Determine whether all prerequisites are checked off
	var complete = true;
	for (var j = 0; j < array_length_2d(global.puzzle_prereq_checklist, i); j++)
		complete = complete && global.puzzle_prereq_checklist[i,j];
	
	// If not, skip
	if (complete == false)
		continue;
	
	// If so, ensure that the first element of the puzzle sequence is (at least) unlocked
	switch i
	{
		case 0: global.coloring_save[0] = max(global.coloring_save[0], 1); break;
		case 1: global.edge_save[0] = max(global.edge_save[0], 1); break;
		case 2: global.total_save[0] = max(global.total_save[0], 1); break;
		case 3: global.graceful_save[0] = max(global.graceful_save[0], 1); break;
		case 4: global.decomp_save[0] = max(global.decomp_save[0], 1); break;
		case 5: global.dominating_save[0] = max(global.dominating_save[0], 1); break;
		case 6: global.fall_save[0] = max(global.fall_save[0], 1); break;
		case 7: global.equitable_save[0] = max(global.equitable_save[0], 1); break;
	}
}
