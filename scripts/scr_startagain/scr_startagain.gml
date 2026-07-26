function scr_startagain(){
	scr_recursive_copy(game_save_id+"BACKUP", program_directory+"TERMINALS");
	room_goto(room_titlescreen);
	
	trueinit();
}