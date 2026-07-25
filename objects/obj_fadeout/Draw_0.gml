draw_set_colour(c_black);
draw_set_alpha(alpha);
var where = global.cam_x - 1;
if room == room_titlescreen
	where = -1;
draw_rectangle(where, 0, where + 542, 304, 0);
draw_set_color(c_white);
draw_set_alpha(1);