global.canmove = 0;
obj_player.visible = 0;

if abs(0 - red_col) <= 0.1 {
	red_col = 0
} else {
	red_timer++
	if red_timer > 30 {
		red_col = lerp(red_col, 0, 0.05);
	}
}

if keyboard_check_pressed(vk_up) && (global.password_entered != global.password) && global.password_can_enter && !completed {
	
	red_timer = 0;
	if string_length(global.password_entered) < string_length(global.password) {
		error_msg = "PASSWORD TOO SHORT"
	} else {
		error_msg = "INCORRECT PASSWORD"
	}
	
	if global.password_entered == "TOBEORNOTT" && global.puzzle_on == "txt" {
		error_msg = "FIRST LETTERS VRO,\nIT WON'T FIT LIKE THIS";
		red_timer = -30;
	}
	
	global.password_entered = "";
	if audio_is_playing(snd_WRONG)
		audio_stop_sound(snd_WRONG);
	snd_play(snd_WRONG)
	red_col = 1;
	
} else if keyboard_check_pressed(vk_up) && global.password_can_enter && !completed {
	
	global.puzzle_solved[global.puzzle_on_id] = 1;
	if audio_is_playing(mus_terminal){
		audio_stop_sound(mus_terminal)	
	}
	snd_play(snd_cheer);
	completed = 1;
	
}

if completed && !audio_is_playing(snd_cheer){
	instance_destroy(scr_terminal_handlers(global.puzzle_on));
	instance_destroy();
}

if global.password_can_enter {
	var let = anyletter_pressed()
	
	if let != 0 && let != vk_backspace {
		
		var pitch = random_range(0.7, 1);
		snd_play(snd_keyboard, 1, 0, pitch);
		
		var arr = [];
		var where = string_length(global.password_entered)
		
		if string_length(global.password_entered) >= string_length(global.password) {
			where = string_length(global.password)-1
		}
		
		for (var i = 0; i < where; i++) {
			arr[i] = string_char_at(global.password_entered, i+1);
		}
		array_push(arr, chr(let));
		global.password_entered = "";
		
		for (var i = 0; i < array_length(arr); i++) {
			global.password_entered += arr[i]
		}
	} else if let == vk_backspace {
		var pitch = random_range(0.7, 1);
		snd_play(snd_keyboard, 1, 0, pitch);
		
		var arr = [];
		var where = string_length(global.password_entered)-1;
		
		for (var i = 0; i < where; i++) {
			arr[i] = string_char_at(global.password_entered, i+1);
		}
		global.password_entered = "";
		
		for (var i = 0; i < array_length(arr); i++) {
			global.password_entered += arr[i]
		}
	}
}

if keyboard_check_pressed(vk_down) && !completed {
	instance_destroy(scr_terminal_handlers(global.puzzle_on));
	instance_destroy();
}