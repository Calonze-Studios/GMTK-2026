function scr_room_goto_fade(_room){
	var fadeout = instance_create_depth(0, 0, -99999, obj_fadeout);
	fadeout._room = _room;
}