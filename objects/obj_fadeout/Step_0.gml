alpha += 0.05
	
if alpha >= 1 {
	var special = "";
	
	if _room == "quit" {
		game_end()
		exit;
	}
	else if _room == "title to main" {
		_room = room_main
		
		special = "beginning";
		
		instance_create_depth(0, 0, 0, obj_manager);
		instance_create_depth(0, 0, 0, obj_camera);
		instance_create_depth(100, 190, -5, obj_player);
		
		instance_destroy(obj_titlescreen);
	}
	
	room_goto(_room)
	var fadein = instance_create_depth(0, 0, depth, obj_fadein);
	fadein.special = special;
	instance_destroy();
}