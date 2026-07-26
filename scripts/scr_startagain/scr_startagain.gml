function scr_startagain(){
	scr_recursive_delete(working_directory+"TERMINALS");
	//scr_recursive_copy(game_save_id+"BACKUP", working_directory+"TERMINALS");
	room_goto(room_titlescreen);
	
	trueinit();
}