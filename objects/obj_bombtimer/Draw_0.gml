draw_sprite(spr_bombscreen, 0, global.cam_x + 4, y_offset)

var timer = "";

var mins = string(floor(global.timer/60));
var secs = string(global.timer % 60);

timer += $"{string_length(mins)<2 ? "0" : ""}{mins}:{string_length(secs)<2 ? "0" : ""}{secs}"

draw_set_halign(fa_middle);
draw_text(global.cam_x + 4 + sprite_width/2, y_offset + 11, timer);

draw_set_halign(fa_left)