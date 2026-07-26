global.canmove = 1;

global.puzzle_on = "";

global.password_can_enter = 1;

if !array_contains(global.puzzle_solved, 0)
	scr_cutscenes("all_puzzles")

obj_player.visible = 1;

if audio_is_playing(mus_terminal){
	audio_stop_sound(mus_terminal)	
}

audio_play_sound(mus_retired, 0, 1);