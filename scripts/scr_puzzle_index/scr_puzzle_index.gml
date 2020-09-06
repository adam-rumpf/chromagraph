/// @func scr_puzzle_index(num)
/// @desc Returns the position of a given puzzle ID in an array of all puzzles, in order by type (1 coloring -- 8 equitable) and then puzzle list position.
/// @param {int} num Puzzle index (unique ID from puzzle list).
/// @return {int} Position of given puzzle in a universal 1D array of puzzles, or -1 if no match is found.

// Rename argument
var num = argument[0];

// Search for position by incrementing through all puzzle lists until finding a match
var ind = 0; // current position
for (var i = 0; i < array_length_1d(global.coloring_puzzles); i++)
{
	var elem = global.coloring_puzzles[i];
	if (elem[0] == num)
		return ind;
	ind++;
}
for (var i = 0; i < array_length_1d(global.edge_puzzles); i++)
{
	var elem = global.edge_puzzles[i];
	if (elem[0] == num)
		return ind;
	ind++;
}
for (var i = 0; i < array_length_1d(global.total_puzzles); i++)
{
	var elem = global.total_puzzles[i];
	if (elem[0] == num)
		return ind;
	ind++;
}
for (var i = 0; i < array_length_1d(global.graceful_puzzles); i++)
{
	var elem = global.graceful_puzzles[i];
	if (elem[0] == num)
		return ind;
	ind++;
}
for (var i = 0; i < array_length_1d(global.decomp_puzzles); i++)
{
	var elem = global.decomp_puzzles[i];
	if (elem[0] == num)
		return ind;
	ind++;
}
for (var i = 0; i < array_length_1d(global.dominating_puzzles); i++)
{
	var elem = global.dominating_puzzles[i];
	if (elem[0] == num)
		return ind;
	ind++;
}
for (var i = 0; i < array_length_1d(global.fall_puzzles); i++)
{
	var elem = global.fall_puzzles[i];
	if (elem[0] == num)
		return ind;
	ind++;
}
for (var i = 0; i < array_length_1d(global.equitable_puzzles); i++)
{
	var elem = global.equitable_puzzles[i];
	if (elem[0] == num)
		return ind;
	ind++;
}

// If no matches were found, return -1
return -1;
