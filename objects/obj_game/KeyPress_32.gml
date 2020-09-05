//###
show_message("Final status is: " + string(global.final_complete));
global.final_complete = false;
scr_save_game();
show_message("Set final status to False and saved.");
