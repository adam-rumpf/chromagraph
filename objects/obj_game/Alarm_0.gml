/// @desc End screen flash and create button.

// Create "next" button
var next = instance_create_layer(room_width-24, room_height/2, "Overlays", obj_gui_next);
next.xx = room_width-24;
next.yy = room_height/2;

// End flash
obj_screen_flash.fading = false;
