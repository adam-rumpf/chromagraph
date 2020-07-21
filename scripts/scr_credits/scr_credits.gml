/// @func scr_credits()
/// @desc Display credits text.

// Define text
var credits = @"(Title)
Copyright (c) 2020 Adam Rumpf  
adam-rumpf.github.io

Made in GameMaker Studio 2  
2017 YoYo Games Ltd

Source code released under MIT License  
(GitHub Repo Link)

(sound effects, music)
";

// Set text attributes
draw_set_font(fnt_standard);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw text
draw_text_color(room_width/2, room_height/2, credits, c_white, c_white, c_white, c_white, 1);
