function begin_cutscene(){
	global.textname = "";
	global.txtsnd = [snd_blip];
	
	while instance_exists(obj_cutscene)
		instance_destroy(obj_cutscene);
	
	instance_create_depth(0, 0, 0, obj_cutscene);
}

function c_cmd(arg0, arg1 = 0, arg2 = 0, arg3 = 0){
	array_push(obj_cutscene.command_arg0, arg0);
	array_push(obj_cutscene.command_arg1, arg1);
	array_push(obj_cutscene.command_arg2, arg2);
	array_push(obj_cutscene.command_arg3, arg3);
}

function c_msg(str, audio_clip = -1){
	c_cmd("msg", str, audio_clip)
}

function c_setname(str){
	c_cmd("setname", str);
}

function c_terminalshow(_id){
	c_cmd("terminalshow", _id);
}

function c_ic(_x, _y, obj){
	c_cmd("ic", _x, _y, obj);
}

function c_setflag(flag, val){
	c_cmd("setflag", flag, val)
}

function c_change_global_var(varname, varvalue){
	c_cmd("change_global_var", varname, varvalue);
}

function c_se_ext(ind, array = []){
	c_cmd("script_execute_ext", ind, array);
}

function c_snd_play(ind){
	c_cmd("snd_play", ind)
}