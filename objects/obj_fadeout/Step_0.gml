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
		
		instance_create_depth(0, 0, 0, obj_manager);
		instance_create_depth(0, 0, 0, obj_camera);
		instance_create_depth(100, 190, -5, obj_player);
		
		instance_destroy(obj_titlescreen);
	}
	if _room == "to bomb"{
		_room = room_bomb;
		
		special = "bomb";
	}
	if _room == "final to main"{
		_room = room_main;
		
		special = "final"
	}
	
	room_goto(_room)
	var fadein = instance_create_depth(0, 0, depth, obj_fadein);
	fadein.special = special;
	instance_destroy();
}