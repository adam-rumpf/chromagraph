/// @func scr_credits()
/// @desc Display credits text.

// Define text
var height = 300; // amount of vertical text movement allowed (increase for longer credits)
var credits = @"Chromagraph
Copyright (c) 2020 Adam Rumpf
adam-rumpf.github.io

Made in GameMaker Studio 2
2017 YoYo Games Ltd

Source code released under MIT License
github.com/adam-rumpf/chromagraph

--- Music ---

Babylon by Kevin MacLeod
incompetech.filmmusic.io/song/3406-babylon
creativecommons.org/licenses/by/4.0

--- Sound Effects ---

freesound.org

--- Play Testers ---

(testers)

--- Special Thanks ---

Hemanshu Kaul
Douglas West";

// Set text attributes
draw_set_font(fnt_standard);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Position text based on mouse position
var yy = height/2 - (mouse_y/room_height)*height;

// Draw text
draw_text_color(room_width/2, room_height/2 + yy, credits, c_white, c_white, c_white, c_white, 1);
