/// @desc Initialize button attributes.

// Set image attributes
image_speed = 0.5*(60/room_speed);
image_alpha = 0.8;
image_xscale = 0.5;
image_yscale = 0.5;

// Attributes (set by controller object)
type = 0; // puzzle type
puzzle = rm_menu; // puzzle room associated with button
selected = false; // whether the button is selected
