/// @func scr_save_game()
/// @desc Saves game progress.

// File name and version
var save, version;
save = "save.dat";
version = 1.0;

// Clear file
if (file_exists(save))
	file_delete(save);

// Save level progress (which consists of writing the save states within each global puzzle array)
var map = ds_map_create();
ds_map_add(map, "version", version); // record version number
for (var i = 0; i < array_length_1d(global.coloring_save); i++)
{
	var elem = global.coloring_puzzles[i];
	ds_map_add(map, string(elem[0]), global.coloring_save[i]);
}
for (var i = 0; i < array_length_1d(global.edge_save); i++)
{
	var elem = global.edge_puzzles[i];
	ds_map_add(map, string(elem[0]), global.edge_save[i]);
}
for (var i = 0; i < array_length_1d(global.total_save); i++)
{
	var elem = global.total_puzzles[i];
	ds_map_add(map, string(elem[0]), global.total_save[i]);
}
for (var i = 0; i < array_length_1d(global.graceful_save); i++)
{
	var elem = global.graceful_puzzles[i];
	ds_map_add(map, string(elem[0]), global.graceful_save[i]);
}
for (var i = 0; i < array_length_1d(global.decomp_save); i++)
{
	var elem = global.decomp_puzzles[i];
	ds_map_add(map, string(elem[0]), global.decomp_save[i]);
}
for (var i = 0; i < array_length_1d(global.dominating_save); i++)
{
	var elem = global.dominating_puzzles[i];
	ds_map_add(map, string(elem[0]), global.dominating_save[i]);
}
for (var i = 0; i < array_length_1d(global.fall_save); i++)
{
	var elem = global.fall_puzzles[i];
	ds_map_add(map, string(elem[0]), global.fall_save[i]);
}
for (var i = 0; i < array_length_1d(global.equitable_save); i++)
{
	var elem = global.equitable_puzzles[i];
	ds_map_add(map, string(elem[0]), global.equitable_save[i]);
}
ds_map_secure_save(map, save);
