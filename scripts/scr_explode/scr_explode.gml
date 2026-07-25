function scr_explode(how = ""){
	if global.exploded
		exit;
		
	global.exploded = 1;
	global.exploded_how = how;
	
	scr_debugprint("kaboom!")
	instance_create_depth(0, 0, -99999, obj_explosion)
}