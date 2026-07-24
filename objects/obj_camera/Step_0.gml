var centx = obj_player.x - 270;
var centy = 0;
	
global.cam_x = centx;
global.cam_y = centy;
	
if abs(global.cam_x - round(global.cam_x)) <= 0.01
	global.cam_x = round(global.cam_x);
	
camera_set_view_pos(view_camera[0], global.cam_x, global.cam_y);
camera_set_view_pos(view_camera[1], room_width-540, 0);
camera_set_view_pos(view_camera[2], 0, 0);