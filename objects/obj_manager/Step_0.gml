if debug_check_pressed(vk_space) {
	global.fuckedup++;
	//scr_debugprint($"More fucked up. {global.fuckedup}")
}

if debug_check_pressed(vk_shift) {
	global.fuckedup--;
	//scr_debugprint($"Less fucked up. {global.fuckedup}")
}

if debug_check_pressed(ord("R"))
	scr_explode("You pressed the debug keybind.")

if room == room_bomb {
	global.cam_max_x = 0;
}