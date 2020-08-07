/// @desc Initialize button attributes.

// Set image attributes
image_speed = 0;
image_xscale = 0.5;
image_yscale = 0.5;

// Attributes (set by controller object)
type = 0; // puzzle type
puzzle = rm_menu; // puzzle room associated with button
selected = false; // whether the button is selected
state = 0; // puzzle state (0 for locked, 1 for unlocked, 2 for complete)

// Set timer to delay activation
active = false;
mouseover = false;
alarm[1] = 1.5*room_speed;
