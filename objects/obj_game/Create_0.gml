/// @desc Initialize global settings and variables.

// Randomize seed
randomize();

// Room graph objects
g = [];

// Room color class sizes
class = [];

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
	4 -- Graceful Trees
	5 -- Decomposition
*/
global.puzzle = 0;

// Global puzzle parameters
global.color_limit = 0;

scr_pallette(0, 1);//###
