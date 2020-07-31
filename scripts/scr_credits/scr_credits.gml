/// @func scr_credits()
/// @desc Display credits text.

// Define text
var credits = @"Chromagraph
Copyright (c) 2020 Adam Rumpf
adam-rumpf.github.io

Made in GameMaker Studio 2
2017 YoYo Games Ltd

Source code released under MIT License
https://github.com/adam-rumpf/chromagraph

Music:

Babylon by Kevin MacLeod
Link: https://incompetech.filmmusic.io/song/3406-babylon
License: http://creativecommons.org/licenses/by/4.0/

Sound Effects:

(sound effects)

Play Testers:

(testers)

Special Thanks:

Hemanshu Kaul
Douglas West";

// Set text attributes
draw_set_font(fnt_standard);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//### Either scroll or have move with mouse's y-position

// Draw text
draw_text_color(room_width/2, room_height/2, credits, c_white, c_white, c_white, c_white, 1);
