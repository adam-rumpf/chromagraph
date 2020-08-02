/// @desc Initialize global settings and variables.

// Randomize seed
randomize();

// Room graph object
g = id;

// Room color class sizes
class = [];

// Define global puzzle lists
scr_puzzle_list();

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
solved = false; // local variable to determine when puzzle has *just* been solved

// Global sound settings
global.sound_on = true;
global.music_on = true;
scr_load_settings(); // load saved settings
scr_save_settings(); // create a settings file

// Game progress
global.new_game = !scr_load_game(); // load saved game and determine whether it's a new game
