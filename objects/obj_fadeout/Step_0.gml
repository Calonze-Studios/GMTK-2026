alpha += 0.05
	
if alpha >= 1 {
	var special = "";
	
	if _room == "quit" {
		game_end()
		exit;
	}
	if _room == "title to main" {
		_room = room_main
		
		special = "beginning";
		
		if audio_is_playing(mus_terminal)
			audio_stop_sound(mus_terminal);
			
		audio_play_sound(mus_retired, 0, 1);
		
		instance_create_depth(0, 0, 0, obj_manager);
		instance_create_depth(0, 0, 0, obj_camera);
		instance_create_depth(100, 190, -5, obj_player);
		
		instance_destroy(obj_titlescreen);
	}
	if _room == "to bomb"{
		_room = room_bomb;
		
		special = "bomb";
		
		if audio_is_playing(mus_retired)
			audio_stop_sound(mus_retired);
			
		audio_play_sound(mus_retired_final_room, 0, 1);
	}
	if _room == "final to main"{
		_room = room_main;
		
		if audio_is_playing(mus_retired_final_room)
			audio_stop_sound(mus_retired_final_room);
			
		audio_play_sound(mus_broken, 0, 1);
		
		special = "final"
	}
	
	room_goto(_room)
	var fadein = instance_create_depth(0, 0, depth, obj_fadein);
	fadein.special = special;
	instance_destroy();
}