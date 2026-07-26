function scr_terminal_handlers(_id){
	global.password_entered = "";
	global.puzzle_on = _id;
	global.password_can_enter = 1;
	if _id == "txt" {
		global.password = "TBONTBTITQ"
		global.puzzle_on_id = 3;
		
		return obj_terminal_txt
	}
	
	if _id == "wav" {
		global.password = "0000"
		global.puzzle_on_id = 2
		
		return obj_terminal_wav
	}
	if _id == "png" {
		global.password = "00000000";
		global.puzzle_on_id = 1;
		
		return obj_terminal_png
	}
	
	if _id == "json" {
		global.password = "NICEDJAYAAAHFLYS"
		global.puzzle_on_id = 0;
		
		return obj_terminal_json
	}
}