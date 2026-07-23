function begin_cutscene(){
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

function c_msg(str, audio_clip){
	c_cmd("msg", str, audio_clip)
}

function c_setname(str){
	c_cmd("setname", str);
}