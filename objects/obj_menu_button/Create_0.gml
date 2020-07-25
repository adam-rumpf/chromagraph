/// @desc Initialize button attributes.

// Set image attributes
image_speed = 0;
image_alpha = 0.6;
image_xscale = 0.5;
image_yscale = 0.5;

// Attributes (set by controller object)
type = 0; // puzzle type
puzzle = rm_menu; // puzzle room associated with button
image = 0; // button image ID
selected = false; // whether the button is selected
state = 0; // puzzle state (0 for locked, 1 for unlocked, 2 for complete)

// Create button overlay object
overlay = instance_create_layer(x, y, "Button_Labels", obj_menu_button_number);
overlay.button = id;
