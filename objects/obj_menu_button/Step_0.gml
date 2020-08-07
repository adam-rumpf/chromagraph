/// @desc Update appearance and listen for mouse clicks.

// Tint sprite based on unlock status
switch state
{
	// Locked
	case 0:
		image_blend = scr_menu_pallette(type-1, 0.4);
		exit; // no actions for locked buttons
	
	// Unlocked
	case 1:
		image_blend = scr_menu_pallette(type-1, 0.8+0.1*cos(0.005*current_time));
		break;
	
	// Solved
	case 2:
		image_blend = scr_menu_pallette(type-1, 0.7);
}

// Reset mouseover state
if (selected == false && global.sound_on == true)
	mouseover = false;

// If selected, change color and listen for mouse click
if (selected == true && active == true)
{
	image_blend = scr_menu_pallette(type, 1.2);
	
	// Play a sound if just moused over
	if (mouseover == false && global.sound_on == true)
	{
		mouseover = true;
		var stone = audio_play_sound(snd_stone, 5, false);
		audio_sound_pitch(stone, random_range(0.8, 1.2));
	}
	
	// If button is clicked, go to its puzzle room
	if (mouse_check_button_pressed(mb_left))
	{
		// Play a sound
		if (global.sound_on == true)
		{
			var stone = audio_play_sound(snd_stone, 5, false);
			audio_sound_pitch(stone, random_range(0.8, 1.2));
		}
		
		// Begin sreen fade and set alarm for room transition
		obj_screen_fade.fading = true;
		alarm[0] = 1*room_speed*obj_screen_fade.fade_time;
	}
}

// Deselect self
selected = false;
