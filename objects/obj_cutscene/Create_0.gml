command_arg0 = [];
command_arg1 = [];
command_arg2 = [];
command_arg3 = [];

command_on = 0;

done = 0;

first_doing = 1;

global.canmove = 0;

clean = function() {
	while instance_exists(obj_writer)
		instance_destroy(obj_writer);
	while instance_exists(obj_textbg)
		instance_destroy(obj_textbg);
	while instance_exists(obj_name_drawer)
		instance_destroy(obj_name_drawer);
}

check = function(){
	
	if command_on >= array_length(command_arg0) {
		clean();
		instance_destroy();
		
		exit;
	}
	
	if command_arg0[command_on] == "setname" {
		global.textname = command_arg1[command_on];
		done = 1;
	}
	
	if command_arg0[command_on] == "msg" || command_arg0[command_on] == "msg_skip" {
		if first_doing{
			var writer = instance_create_depth(global.cam_x + 10, 217, -10000, obj_writer);
			writer.str = command_arg1[command_on];
			
			if command_arg2[command_on] != -1 {
				writer.play_snd = 0;
				
				snd_play(command_arg2[command_on])
			}
			
			var textbg = instance_create_depth(floor(global.cam_x + 1), 210, -9999, obj_textbg)
			textbg.w = 539;
			textbg.h = 94;
			
			if global.textname != "" {
				var h = string_height(global.textname) + 6;
				
				var namebg = instance_create_depth(floor(global.cam_x + 1), 210 - h, -9999, obj_textbg);
				namebg.w = string_width(global.textname) + 12;
				namebg.h = h;
				
				var name = instance_create_depth(global.cam_x + 5, 210 - h + 4, -10000, obj_name_drawer);
			}
		}
		
		if obj_writer.done && (up_p() || down_h() || command_arg0[command_on] == "msg_skip"){
			done = 1;
		}
	}
	
	if command_arg0[command_on] == "terminalshow" {
		done = 1;
		
		if first_doing {
			instance_create_depth(0, 0, -1000, obj_terminalbig);
			var handler = scr_terminal_handlers(command_arg1[command_on]);
		
			instance_create_depth(0, 0, -1001, handler);
		}
	}
		
	if command_arg0[command_on] == "ic" {
		instance_create_depth(command_arg1[command_on], command_arg2[command_on], 0, command_arg3[command_on]);
		done = 1;
	}
		
	if command_arg0[command_on] == "setflag" {
		global.flag[command_arg1[command_on]] = command_arg2[command_on];
		done = 1;
	}
		
	if command_arg0[command_on] == "change_global_var" {
		if variable_global_exists(command_arg1[command_on])
			variable_global_set(command_arg1[command_on], command_arg2[command_on])
		
		done = 1;
	}
	
	if command_arg0[command_on] == "script_execute_ext" {
		script_execute_ext(command_arg1[command_on], command_arg2[command_on]);
		done = 1;
	}
		
	if command_arg0[command_on] == "snd_play" {
		if first_doing
			snd_play(command_arg1[command_on]);
		
		if !audio_is_playing(command_arg1[command_on])
			done = 1;
	}
	
	first_doing = 0;
	
	if done && command_arg0[command_on] == "msg" && command_arg2[command_on] != -1 {
		if audio_is_playing(command_arg2[command_on])
			audio_stop_sound(command_arg2[command_on])
	}
	
	if done && command_on + 1 < array_length(command_arg0) {
		done = 0;
		first_doing = 1;
		
		clean()
			
		command_on++;
		
		check();
	} else if done && command_on+1 >= array_length(command_arg0) {
		clean();
		
		instance_destroy();
	}
}