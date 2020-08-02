/// @func scr_load_game()
/// @desc Loads save data (only at beginning of game).
/// @return {bool} Indicates whether a save file was found (true if so, false if not).

// File name
var save = "save.dat";

// Check whether a file exists
var exists = false;
if (file_exists(save))
	exists = true;

// If the file exists, read it
if (exists == true)
{
	global.new_game = false;
	
	// Load progress
	var map = ds_map_secure_load(save);
	for (var i = 0; i < array_length_1d(global.coloring_save); i++)
	{
		var elem = global.coloring_puzzles[i];
		if (ds_map_exists(map, string(elem[0])) == true)
			global.coloring_save[i] = round(ds_map_find_value(map, string(elem[0])));
	}
	for (var i = 0; i < array_length_1d(global.edge_save); i++)
	{
		var elem = global.edge_puzzles[i];
		if (ds_map_exists(map, string(elem[0])) == true)
			global.edge_save[i] = round(ds_map_find_value(map, string(elem[0])));
	}
	for (var i = 0; i < array_length_1d(global.total_save); i++)
	{
		var elem = global.total_puzzles[i];
		if (ds_map_exists(map, string(elem[0])) == true)
			global.total_save[i] = round(ds_map_find_value(map, string(elem[0])));
	}
	for (var i = 0; i < array_length_1d(global.graceful_save); i++)
	{
		var elem = global.graceful_puzzles[i];
		if (ds_map_exists(map, string(elem[0])) == true)
			global.graceful_save[i] = round(ds_map_find_value(map, string(elem[0])));
	}
	for (var i = 0; i < array_length_1d(global.decomp_save); i++)
	{
		var elem = global.decomp_puzzles[i];
		if (ds_map_exists(map, string(elem[0])) == true)
			global.decomp_save[i] = round(ds_map_find_value(map, string(elem[0])));
	}
	for (var i = 0; i < array_length_1d(global.dominating_save); i++)
	{
		var elem = global.dominating_puzzles[i];
		if (ds_map_exists(map, string(elem[0])) == true)
			global.dominating_save[i] = round(ds_map_find_value(map, string(elem[0])));
	}
	for (var i = 0; i < array_length_1d(global.fall_save); i++)
	{
		var elem = global.fall_puzzles[i];
		if (ds_map_exists(map, string(elem[0])) == true)
			global.fall_save[i] = round(ds_map_find_value(map, string(elem[0])));
	}
	for (var i = 0; i < array_length_1d(global.equitable_save); i++)
	{
		var elem = global.equitable_puzzles[i];
		if (ds_map_exists(map, string(elem[0])) == true)
			global.equitable_save[i] = round(ds_map_find_value(map, string(elem[0])));
	}
}

//###
// Process results so that all unlock series' make sense

// Ensure that first coloring puzzle is unlocked
if (global.coloring_save[0] == 0)
	global.coloring_save[0] = 1;

//### Unlock other puzzle sequences
global.edge_save[0] = 1;
global.total_save[0] = 1;
global.graceful_save[0] = 1;
global.decomp_save[0] = 1;
global.dominating_save[0] = 1;
global.fall_save[0] = 1;
global.equitable_save[0] = 1;

// Ensure that all puzzle solve states are at least as complete as the following puzzles' solve states
var latest = 0; // solve state of latest solved puzzle
for (var i = array_length_1d(global.coloring_save)-1; i >= 0; i--)
{
	latest = max(latest, global.coloring_save[i]);
	global.coloring_save[i] = latest;
}

//########################################################
//### Unlock all puzzles during testing
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

// Return whether the file was found
return exists;
