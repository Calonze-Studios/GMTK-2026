global.password_can_enter = 0;

var wavmask = working_directory + "TERMINALS/wavey/UNUSED/*.wav"

var wav = filename_name(file_find_first(wavmask, 0))

if string_lower(wav) == "countdown.wav"&&!obj_terminalbig.completed{
	
	scr_debugprint("aaaaaaa")
	
	global.puzzle_solved[global.puzzle_on_id] = 1;
	snd_play(snd_cheer);
	obj_terminalbig.completed = 1;
	
}