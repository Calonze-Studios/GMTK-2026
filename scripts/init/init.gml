global.fuckedup = 0;


global.cam_x = 0;
global.cam_y = 0;

global.cam_max_x = 9999//room_width - 540;
global.cam_max_y = 9999//room_height - 304;


window_set_size(1080, 608);
window_set_caption("ZIPBOMB");


global.controller_connected = 0;
global.controller_index = 0;

global.debug = 1;


global.debug_message = []
global.debug_message_timer = [];

global.hover_instance = -1;

global.canmove = 1;

global.textfont = Font1

global.txtsnd = [snd_blip]
global.txtspd = 1;

global.textname = "";