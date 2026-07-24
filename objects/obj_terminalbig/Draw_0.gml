draw_sprite(spr_terminalbig, 0, global.cam_x, 0)

draw_set_color(merge_color(merge_color(c_green, c_lime, 0.5), c_red, red_col));

var pass = string(global.password_entered);

var truepass = "";

for (var i = 0; i < string_length(global.password); i++) {
	if i < string_length(pass)
		truepass += string_char_at(pass, i+1);
	else
		truepass += "_"
	if (i+1) % 4 == 0 && i != string_length(global.password)-1 && global.puzzle_on == "json"
		truepass += "-"
}

draw_text(global.cam_x + 134, 78, $"ENTER PASSWORD:\n\n{truepass}")

draw_set_color(c_red);

var xx = global.cam_x + 145 + irandom_range(-red_col*10, red_col*10);
var xy = 186 + irandom_range(-red_col*10, red_col*10);

draw_set_alpha(red_col)

draw_text(global.cam_x + 134, 140, $"ERROR: {error_msg}")

draw_sprite(spr_terminalwrong, 0, xx, xy)

draw_set_alpha(1);
draw_set_color(c_white);