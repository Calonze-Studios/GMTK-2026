draw_sprite(spr_bombscreen, 0, global.cam_x + 4, y_offset)

var timer = $"{floor(global.timer/60)}:{global.timer%60}";
if string_length(timer) == 4
	timer += "0"

draw_set_halign(fa_middle);
draw_text(global.cam_x + 4 + sprite_width/2, y_offset + 11, timer);

draw_set_halign(fa_left)