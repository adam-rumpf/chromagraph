/// @func scr_load_game()
/// @desc Loads save data (only at beginning of game).
/// @return {bool} Indicates whether a save file was found (true if so, false if not).

// File name and version
var save, version;
save = "save.dat";

// Check whether a file exists
var exists = file_exists(save);

// If the file exists, read it
if (exists == true)
{
	global.new_game = false;
	
	var map = ds_map_secure_load(save);
	
	// Get version number
	if (ds_map_exists(map, "version") == true)
		version = ds_map_find_value(map, "version");
	
	//### Use version number to account for changes in save structure
	
	// Get game completion status
	if (ds_map_exists(map, "complete") == true)
		global.game_complete = bool(ds_map_find_value(map, "complete"));
	
	// Get level progress
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

// Ensure that first coloring puzzle is unlocked
if (global.coloring_save[0] == 0)
	global.coloring_save[0] = 1;

// Ensure that all puzzle solve states are at least as complete as the following puzzles' solve states
var latest = 0; // solve state of latest solved puzzle
for (var i = array_length_1d(global.coloring_save)-1; i >= 0; i--)
{
	latest = max(latest, global.coloring_save[i]);
	global.coloring_save[i] = latest;
}
latest = 0;
for (var i = array_length_1d(global.edge_save)-1; i >= 0; i--)
{
	latest = max(latest, global.edge_save[i]);
	global.edge_save[i] = latest;
}
latest = 0;
for (var i = array_length_1d(global.total_save)-1; i >= 0; i--)
{
	latest = max(latest, global.total_save[i]);
	global.total_save[i] = latest;
}
latest = 0;
for (var i = array_length_1d(global.graceful_save)-1; i >= 0; i--)
{
	latest = max(latest, global.graceful_save[i]);
	global.graceful_save[i] = latest;
}
latest = 0;
for (var i = array_length_1d(global.decomp_save)-1; i >= 0; i--)
{
	latest = max(latest, global.decomp_save[i]);
	global.decomp_save[i] = latest;
}
latest = 0;
for (var i = array_length_1d(global.dominating_save)-1; i >= 0; i--)
{
	latest = max(latest, global.dominating_save[i]);
	global.dominating_save[i] = latest;
}
latest = 0;
for (var i = array_length_1d(global.fall_save)-1; i >= 0; i--)
{
	latest = max(latest, global.fall_save[i]);
	global.fall_save[i] = latest;
}
latest = 0;
for (var i = array_length_1d(global.equitable_save)-1; i >= 0; i--)
{
	latest = max(latest, global.equitable_save[i]);
	global.equitable_save[i] = latest;
}

// Update prerequisite checklist
scr_puzzle_unlock();

// Return whether the file was found
return exists;
