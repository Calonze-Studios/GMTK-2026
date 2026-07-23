if async_load[?"event_type"] == "gamepad discovered" && !global.controller_connected {
	var index = async_load[?"pad_index"];
	var desc = gamepad_get_description(index);
	
	scr_debugprint($"CONTROLLER DISCOVERED\n{index}, {desc}");
	
	//if (string_contains(desc, "apple")) exit;
	
	global.controller_connected = 1;
	global.controller_index = index;
}

if async_load[?"event_type"] == "gamepad lost" && async_load[?"pad_index"] == global.controller_index  {
	var index = async_load[?"pad_index"];
	var desc = gamepad_get_description(index)
	
	scr_debugprint($"CONTROLLER LOST\n{index}, {desc}");
	
	global.controller_connected = 0;
	global.controller_index = -1;
}