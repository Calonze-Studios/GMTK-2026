if debug_check_pressed(vk_space) {
	global.fuckedup++;
	//scr_debugprint($"More fucked up. {global.fuckedup}")
}

if debug_check_pressed(vk_shift) {
	global.fuckedup--;
	//scr_debugprint($"Less fucked up. {global.fuckedup}")
}

//if debug_check_pressed(ord("R"))
//	scr_explode("You pressed the debug keybind.")

if room == room_bomb {
	global.cam_max_x = 0;
}

if !array_contains(global.puzzle_solved, 0) && !instance_exists(obj_finalpath) && global.fuckedup <= 2 && room == room_main {
	scr_debugprint("a")
	instance_create_depth(1167, room_height - sprite_get_height(spr_bg_rails), 18, obj_finalpath)
}