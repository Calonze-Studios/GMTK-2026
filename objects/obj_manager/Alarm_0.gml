if !file_exists(game_save_id + "TERMINALS/jason/jason.json"){
	scr_explode("Probably shouldn't have deleted that file");
	scr_debugprint("jason")
	exit;
}

var wavey_files = ["5_-_retired_(remake)_-_msvdds0210",
				   "it's_terminal", "333", "out_of_retirement",
				   "those_who_prevail"];
				   
for (var i = 0; i < array_length(wavey_files); i++) {
	if !file_exists(game_save_id + "TERMINALS/wavey/" + wavey_files[i] + ".wav"){
		scr_explode("Probably shouldn't have deleted that file...");
		scr_debugprint("wavey")
		exit;
	}
}

if file_find_first(game_save_id + "TERMINALS/penny/tree.*", fa_none) == "" {
	scr_explode("Probably shouldn't have deleted that file...");
	scr_debugprint("penny")
	exit;
}

var pennyfiles = ["bear", "cat", "horrors", "shock", "wowie", "yummy_cement"]

for (var i = 0; i < array_length(pennyfiles); i++){
	var path = game_save_id + "TERMINALS/penny/" + pennyfiles[i]
	if !file_exists(path + ".png") && !file_exists(path + ".jpg") {
		scr_explode("Probably shouldn't have deleted that file...");
		scr_debugprint("penny")
		exit;
	}
}

var textonfileterminal = file_find_first(game_save_id + "TERMINALS/texton/*.txt", fa_none)
var textonfilebackup = file_find_first(program_directory + "BACKUP/texton/*.txt", fa_none)

while textonfileterminal != "" {
	if string_lower(filename_name(textonfileterminal)) != string_lower(filename_name(textonfileterminal)){
		scr_explode("Probably shouldn't have deleted that file...");
		scr_debugprint("texton")
		exit;
	}
	textonfileterminal = file_find_next()
	textonfilebackup = file_find_next()
}


alarm[0] = 5 * fps;