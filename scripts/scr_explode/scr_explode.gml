function scr_explode(how = ""){
	if global.exploded
		exit;
		
	var sounds = [mus_retired, mus_terminal, mus_broken, mus_retired_final_room];
	for (var i = 0; i < array_length(sounds); i++) {
		if audio_is_playing(sounds[i])
			audio_stop_sound(sounds[i]);
	}	
	
	global.exploded = 1;
	global.exploded_how = how;
	
	scr_debugprint("kaboom!")
	instance_create_depth(0, 0, -99999, obj_explosion)
}