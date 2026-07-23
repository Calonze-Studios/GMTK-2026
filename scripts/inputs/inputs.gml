/// Up
function up_p(){
	var ret = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	
	if global.controller_connected
		ret = ret || gamepad_button_check_pressed(global.controller_index, gp_padu)
		
	return ret;
}

function up_r(){
	var ret = keyboard_check_released(vk_up) || keyboard_check_released(ord("W"));
	
	if global.controller_connected
		ret = ret || gamepad_button_check_released(global.controller_index, gp_padu)
		
	return ret;
}

function up_h(){
	var ret = keyboard_check(vk_up) || keyboard_check(ord("W"));
	
	if global.controller_connected
		ret = ret || gamepad_button_check(global.controller_index, gp_padu)
		
	return ret;
}


/// Down
function down_p(){
	var ret = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
	
	if global.controller_connected
		ret = ret || gamepad_button_check_pressed(global.controller_index, gp_padd)
		
	return ret;
}

function down_r(){
	var ret = keyboard_check_released(vk_down) || keyboard_check_released(ord("S"));
	
	if global.controller_connected
		ret = ret || gamepad_button_check_released(global.controller_index, gp_padd)
		
	return ret;
}

function down_h(){
	var ret = keyboard_check(vk_down) || keyboard_check(ord("S"));
	
	if global.controller_connected
		ret = ret || gamepad_button_check(global.controller_index, gp_padd)
		
	return ret;
}


/// Left
function left_p(){
	var ret = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	
	if global.controller_connected
		ret = ret || gamepad_button_check_pressed(global.controller_index, gp_padl)
		
	return ret;
}

function left_r(){
	var ret = keyboard_check_released(vk_left) || keyboard_check_released(ord("A"));
	
	if global.controller_connected
		ret = ret || gamepad_button_check_released(global.controller_index, gp_padl)
		
	return ret;
}

function left_h(){
	var ret = keyboard_check(vk_left) || keyboard_check(ord("A"));
	
	if global.controller_connected
		ret = ret || gamepad_button_check(global.controller_index, gp_padl)
		
	return ret;
}


/// Right
function right_p(){
	var ret = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	
	if global.controller_connected
		ret = ret || gamepad_button_check_pressed(global.controller_index, gp_padr)
		
	return ret;
}

function right_r(){
	var ret = keyboard_check_released(vk_right) || keyboard_check_released(ord("D"));
	
	if global.controller_connected
		ret = ret || gamepad_button_check_released(global.controller_index, gp_padr)
		
	return ret;
}

function right_h(){
	var ret = keyboard_check(vk_right) || keyboard_check(ord("D"));
	
	if global.controller_connected
		ret = ret || gamepad_button_check(global.controller_index, gp_padr)
		
	return ret;
}