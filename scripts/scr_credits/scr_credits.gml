/// @func scr_credits()
/// @desc Display credits text.

// Define text
var height = 600; // amount of vertical text movement allowed (increase for longer credits)
var credits = @'Chromagraph
Copyright (c) 2020 Adam Rumpf
adam-rumpf.github.io

Made in GameMaker Studio 2
2017 YoYo Games Ltd

Source code released under MIT License
github.com/adam-rumpf/chromagraph

~ Music ~

Babylon by Kevin MacLeod
incompetech.filmmusic.io/song/3406-babylon
creativecommons.org/licenses/by/4.0

Wet Riffs by Kevin MacLeod
incompetech.filmmusic.io/song/4618-wet-riffs
creativecommons.org/licenses/by/4.0

~ Sound ~

This game uses the following sounds from freesound:
"Chime2" by Neotone (freesound.org/people/Neotone)
"stone_on_stone" by thanvannispen (freesound.org/people/thanvannispen)
"train screech" by cognito perceptu (freesound.org/people/cognito%20perceptu)
"Waves of Hawaii" by florianreichelt (freesound.org/people/florianreichelt)

~ Playtesters ~

Alex Ruble
Katie Ruble
Cullen Tanoue

~ Special Thanks ~

Hemanshu Kaul
Douglas West
Chris Mitillos';

// Set text attributes
draw_set_font(fnt_standard);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Position text based on mouse position
var yy = height/2 - (mouse_y/room_height)*height;

// Draw text
draw_text_color(room_width/2, room_height/2 + yy, credits, c_white, c_white, c_white, c_white, 1);
