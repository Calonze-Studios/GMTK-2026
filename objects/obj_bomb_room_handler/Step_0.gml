var arr = [game_save_id + "TERMINALS/bomb/blue.ico",
		   game_save_id + "TERMINALS/bomb/orange.png",
		   game_save_id + "TERMINALS/bomb/shortcut.lnk",
		   game_save_id + "TERMINALS/bomb/list.ini",
		   game_save_id + "TERMINALS/bomb/musician.gif",
		   game_save_id + "TERMINALS/bomb/site.html",
		   game_save_id + "TERMINALS/bomb/hello.mp4",
		   game_save_id + "TERMINALS/bomb/bear.webp",
		   game_save_id + "TERMINALS/bomb/reference.cloud",
		   game_save_id + "TERMINALS/bomb/data.win"]

var complete = function(){
	with obj_bombtimer
		leave();
	scr_cutscenes("finale");
}

for (var i = array_length(arr)-1; i >= 0; i--) {
	if !file_exists(arr[i]) && global.fin_puzzle_progress >= i && (is_blue || i != 1) {
		if global.fin_puzzle_progress == i {
			global.fin_puzzle_progress++;
			
			if i == 9 {
				complete()
			}
		}
	} else if !file_exists(arr[i]) && global.fin_puzzle_progress < i {
		scr_explode("Probably shouldn't have deleted that file...");
	}
}

if debug_check_pressed(ord("C"))
	complete();