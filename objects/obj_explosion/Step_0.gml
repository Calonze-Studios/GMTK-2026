frametimer++;

if frametimer >= 10 {
	frametimer = 0;
	frame++;
}

if frame >= image_number {
	var destroy = [obj_bg, obj_nuke, obj_rails, obj_camera,
				   obj_player, obj_interactable, obj_manager,
				   obj_hover, obj_fadein];
				   
	for (var i = 0; i < array_length(destroy); i++) {
		while instance_exists(destroy[i])
			instance_destroy(destroy[i]);
	}
	
	room_goto(room_gameover);
}