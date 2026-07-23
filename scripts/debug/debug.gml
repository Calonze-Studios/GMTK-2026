function scr_debugprint(str){
	show_debug_message(str);
	
	array_push(global.debug_message, str);
	array_push(global.debug_message_timer, 0)
}

function debug_check_pressed(key){
	return global.debug && keyboard_check_pressed(key);
}

function debug_check_released(key){
	return global.debug && keyboard_check_released(key);
}

function debug_check(key){
	return global.debug && keyboard_check(key);
}