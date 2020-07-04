/// @desc Initialize global settings and variables.

// Randomize seed
randomize();

// Room graph objects
g = [];

// Whether or not to evaluate a solution
evaluate = false;

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
*/
global.puzzle = 0;

// Global puzzle parameters
global.color_limit = 0;
