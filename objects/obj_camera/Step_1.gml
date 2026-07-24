var centx = obj_player.x - 270;
var centy = 0;
//centx = clamp(centx, 0, global.cam_max_x);
//centy = clamp(centy, 0, global.cam_max_y);
	
var lerpval = 0.5
	
//centx = lerp(centx, global.cam_x, lerpval);
	
global.cam_x = centx;
global.cam_y = centy;
	
if abs(global.cam_x - round(global.cam_x)) <= 0.01
	global.cam_x = round(global.cam_x);
	
camera_set_view_pos(view_camera[0], global.cam_x, global.cam_y);