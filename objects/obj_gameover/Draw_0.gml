draw_clear(c_blue);

draw_set_color(c_white);
draw_set_font(font_bsod);

draw_text(5, 20, $"A fatal error has occured in \"ZIPBOMB\":\nError No. 2304 - \"GAME OVER: KABOOM\"\n\nError description:\n\"{global.exploded_how}\"");

var yoff = 170;

draw_text(5, yoff, "Please press the following button to restart\n\"ZIPBOMB\":");

var hover = 0;
if mouse_x >= 10 && mouse_x <= 10 + sprite_get_width(spr_bsod_restart) && mouse_y >= yoff + 40 && mouse_y <= yoff + 40 + sprite_get_height(spr_bsod_restart)
	hover = 1;

draw_sprite(spr_bsod_restart, hover, 10, yoff + 40)

if hover && mouse_check_button_pressed(mb_left)
	scr_startagain();

draw_set_font(global.textfont)

//draw_sprite(spr_bsod_smile, 0, room_width - 20, 20)