depth = 160;
var mult = 2;

var _x = global.cam_x/mult;

var bg = spr_bg_parallax;

if global.fuckedup > 2
	bg = spr_bg_fakeplace;

var bg_w = sprite_get_width(bg);

draw_sprite(bg, 0, _x, 0);
draw_sprite(bg, 0, _x + bg_w, 0)
draw_sprite(bg, 0, _x - bg_w, 0)