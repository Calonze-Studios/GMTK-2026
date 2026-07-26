function scr_startagain(){
	scr_recursive_delete(game_save_id+"TERMINALS");
	scr_recursive_copy(working_directory+"BACKUP", game_save_id+"TERMINALS");
	room_goto(room_titlescreen);
	
	trueinit();
}