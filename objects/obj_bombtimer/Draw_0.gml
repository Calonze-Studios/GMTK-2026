draw_sprite(spr_bombscreen, 0, global.cam_x + 4, y_offset)

var timer = $"{floor(global.timer/60)}:{global.timer%60}";

var arr = [];

for (var i = 0; i < string_length(timer); i++) {
	arr[i] = string_char_at(timer, i+1);
	if string_char_at(timer, i+1) == ":" && string_length(timer) == 4
		arr[i] += "0"
}
timer = "";
for (var i = 0; i < array_length(arr); i++) {
	timer += arr[i];
}

draw_set_halign(fa_middle);
draw_text(global.cam_x + 4 + sprite_width/2, y_offset + 11, timer);

draw_set_halign(fa_left)