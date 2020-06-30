/// @desc Initialize global settings and variables.

// Randomize seed
randomize();

// Room graph objects
g = [];

/*
Global list of selectable objects.
This includes all buttons and graph elements that can be clicked on within the current room.
Resets on room start, and only includes graph elements appropriate for the given puzzle type.
*/
global.selectable = [];
