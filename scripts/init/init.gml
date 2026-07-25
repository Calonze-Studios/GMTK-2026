function trueinit() {
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

	global.textfont = font_add_sprite_ext(spr_nukefont, "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789.,!?+-_'\":()", 0, -2)
	global.bombfont = font_add_sprite_ext(spr_bombfont, "0123456789:", 1, -2)

	draw_set_font(global.textfont)

	global.txtsnd = [snd_blip]
	global.txtspd = 1;

	global.textname = "";

	global.puzzle_progress = [0, 0, 0, 0]; // JSON, PNG, WAV, TXT
	global.puzzle_solved = [1, 1, 1, 1];   // JSON, PNG, WAV, TXT

	global.fin_puzzle_progress = 0;

	global.password = "";
	global.password_entered = "";
	global.password_can_enter = 1;

	global.puzzle_on = ""
	global.puzzle_on_id = 0;

	global.timer = 1200

	global.exploded = 0;
	global.exploded_how = "";
	
	global.flag = [0];
	
	global.backups = working_directory + "BACKUPS/don't touch/really/";
	
	global.waifu_expression = "idle";
}

function init() {
	trueinit();
	
	scr_startagain();
}

init();