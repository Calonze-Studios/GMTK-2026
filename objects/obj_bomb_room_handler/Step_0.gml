var arr = [working_directory + "TERMINALS/bomb/blue.ico",
		   working_directory + "TERMINALS/bomb/orange.png",
		   working_directory + "TERMINALS/bomb/shortcut.lnk",
		   working_directory + "TERMINALS/bomb/list.ini",
		   working_directory + "TERMINALS/bomb/musician.gif",
		   working_directory + "TERMINALS/bomb/site.html",
		   working_directory + "TERMINALS/bomb/hello.mp4",
		   working_directory + "TERMINALS/bomb/bear.webp",
		   working_directory + "TERMINALS/bomb/reference.cloud",
		   working_directory + "TERMINALS/bomb/data.win"]

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