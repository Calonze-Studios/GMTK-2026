depth = -1000;

global.canmove = 0;

red_col = 0;

red_timer = 0;

error_msg = "";

completed = 0;

if audio_is_playing(mus_retired){
	audio_stop_sound(mus_retired)	
}

audio_play_sound(mus_terminal, 0, 1);