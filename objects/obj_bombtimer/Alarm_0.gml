global.timer--;

if global.timer <= 0 {
	scr_explode("You ran out of time.");
	exit;
}

if global.timer % (3 * 60) == 0 && room == room_bomb && !instance_exists(obj_cutscene) {
	global.waifu_expression = "talk";
	
	randomize();
	var voiceline = choose(snd_m_toolong0, snd_m_toolong1, snd_m_toolong2, snd_m_secret);
	snd_play(voiceline);
	
	with obj_waifu_manager {
		alarm[1] = audio_sound_length(voiceline)*fps + 10
	}
}

alarm[0] = fps