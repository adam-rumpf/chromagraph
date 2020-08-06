/// @desc Go to next puzzle room (or main menu, if we've just unlocked something).

// Go to room and begin fading back in
if (obj_game.unlock == true)
	room_goto(rm_menu);
else
	room_goto(scr_puzzle_next(room));
