var _cover_name = "cloth.png"

if file_exists(_cover_name) {
	scr_debugprint("exists")
	draw_sprite(spr_terminal_cover, 0, global.cam_x, 0);
}