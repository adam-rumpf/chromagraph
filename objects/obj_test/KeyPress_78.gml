//###

if (current < array_length_1d(rooms)-1)
	current++;
else
	current = 0;

room_goto(rooms[current]);
