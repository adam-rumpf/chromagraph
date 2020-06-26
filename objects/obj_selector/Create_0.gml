/// @desc Set local variables.

//###
/*
Have this object keep track of the cursor position, and the ID of the "selected object" (if any, or self if not).
As a step event, calculate distance from cursor to each graph object or button on screen (if any).
If this distance falls below a cutoff, set that object's internal "selected" variable to true (each object should set its own to false at the beginning of each step).
*/

// Dummy variable so that the object can select "itself" when no other target is valid
selected = false;
