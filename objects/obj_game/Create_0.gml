/// @desc Initialize global settings and variables.

// Randomize seed
randomize();

// Room graph object
g = id;

// Room color class sizes
class = [];

// Keeps track of whether current puzzle has been solved yet
solved = false;

/*
Global list of selectable objects.
This includes all buttons and graph elements that can be clicked on within the current room.
Resets on room start, and only includes graph elements appropriate for the given puzzle type.
*/
global.selectable = [];

/*
Global puzzle type ID. Includes:
	0 -- None
	1 -- Coloring
	2 -- Edge Coloring
	3 -- Total Coloring
	4 -- Graceful Trees
	5 -- Decomposition
	6 -- Dominating Set
	7 -- Fall Coloring
	8 -- Equitable Coloring
*/
global.puzzle = 0;

// Global puzzle parameters
global.puzzle_limit = 0;

// Global indicator of whether current puzzle is solved
global.puzzle_solved = false;

// Global sound settings
global.sound_on = true;
global.music_on = true;

// Attempt to read settings file
scr_load_settings();

//###
// Check whether save file exists. If it does, go to the menu. If not, run new game code and go to new game room.
